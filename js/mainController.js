mathApp.controller('MainController', ['$scope', '$http', '$uibModal', 'PageService', 'RestService', function($scope, $http, $uibModal, PageService, RestService) {
    $scope.pager = {};
    $scope.deletedProblems = [];
    $scope.searchTerm = "";

    RestService.get("./php/mathprobs-get.php").then(function (response) {
        $scope.problems = response.data;
        $scope.problems[0].keywords = "Algebra,Calculus,Trig";
        $scope.setPage(1);
    });

    $scope.setPage = function (page) {
        if (page < 1 || page > $scope.pager.totalPages) {
            return;
        }

        $scope.problems.sort(function(a, b) {
            return -(a.porder - b.porder);
        });

        // get pager object from service
        $scope.pager = PageService.GetPager($scope.problems.length, page);

        // get current page of items
        $scope.currentProblems = $scope.problems.slice($scope.pager.startIndex, $scope.pager.endIndex + 1);
    };

    // Create a new problem
    $scope.newProblem = function() {
        var porder = $scope.problems[0].porder;
        var modalInstance = $uibModal.open({
            templateUrl: "./views/newProblem.html",
            controller: function($scope, $rootScope) {
                $scope.newContent = "";
                $scope.insertProblem = function(valid) {
                    $scope.submitted = true;
                    if (valid) {
                        $rootScope.$broadcast('new-problem', {content: $scope.newContent, porder:porder + 1});
                        $scope.$close();
                    }
                }
            }
        });
    };

    //Edit an existing problem
    $scope.editProblem = function(problem, index) {
        var page = $scope.pager.currentPage;
        index = $scope.pager.pageSize * (page - 1) + index;
        var modalInstance = $uibModal.open({
            templateUrl: "./views/newProblem.html",
            controller: function($scope, $rootScope) {
                $scope.newContent = problem.content;
                $scope.insertProblem = function(valid) {
                    $scope.submitted = true;
                    if (valid) {
                        $rootScope.$broadcast('edit-problem', {pid: problem.pid, index: index, page: page, content: $scope.newContent, porder: problem.porder});
                        $scope.$close();
                    }
                }
            }
        });
    };

    //Delete an existing problem
    $scope.deleteProblem = function(pid, index) {
        var res = confirm("Are you sure you want to delete this problem?");
        if (res) {
            var page = $scope.pager.currentPage;
            index = $scope.pager.pageSize * (page - 1) + index;

            $scope.deletedProblems.push($scope.problems[index]);

            RestService.delete("./php/mathprobs-delete.php", $scope.problems[index]);

            $scope.problems.splice(index, 1);
            $scope.setPage(page);
        }
    };

    //Undo the last deletion
    $scope.undoDelete = function() {
        var page = $scope.pager.currentPage;
        var undeletedProblem = $scope.deletedProblems.pop();

        RestService.post("./php/mathprobs-post.php", JSON.stringify(undeletedProblem)).then(function(res) {
            undeletedProblem.pid = Number(res.data);
            $scope.problems.push(undeletedProblem);
            $scope.setPage(page);
        });
    };

    //Move problem up
    $scope.moveUp = function(problem, index) {
        var page = $scope.pager.currentPage;
        index = $scope.pager.pageSize * (page - 1) + index;

        if (index === 0) {
            return;
        }

        var temp = $scope.problems[index].porder;
        $scope.problems[index].porder = $scope.problems[index - 1].porder;
        $scope.problems[index - 1].porder = temp;
        $scope.setPage(page);

        RestService.put("./php/mathprobs-put.php", JSON.stringify($scope.problems[index]));
        RestService.put("./php/mathprobs-put.php", JSON.stringify($scope.problems[index-1]));

    };

    //Move problem down
    $scope.moveDown = function(problem, index) {
        var page = $scope.pager.currentPage;
        index = $scope.pager.pageSize * (page - 1) + index;

        if (index === $scope.problems.length - 1) {
            return;
        }

        var temp = $scope.problems[index].porder;
        $scope.problems[index].porder = $scope.problems[index + 1].porder;
        $scope.problems[index + 1].porder = temp;
        $scope.setPage(page);

        RestService.put("./php/mathprobs-put.php", JSON.stringify($scope.problems[index]));
        RestService.put("./php/mathprobs-put.php", JSON.stringify($scope.problems[index+1]));
    };

    //Edit the keywords
    $scope.editKeywords = function(problem) {
        if (!problem.editingKeywords) {
            problem.editingKeywords = true;
            if (!problem.splitKeywords) {
                problem.splitKeywords = problem.keywords.split(',');
            }
        } else {
            problem.editingKeywords = false;
        }
    };

    //Filter our searches
    $scope.keywordFilter = function(problem) {
        var isMatch = false;

        if ($scope.searchTerm) {
            var keywords = $scope.searchTerm.split(',');

            keywords.forEach(function(keyword) {
                if (new RegExp(keyword).test(problem.keywords)) {
                    isMatch = true;
                }
            });
        } else {
            isMatch = true;
        }

        return isMatch;
    };


    //When a new problem is inserted
    $scope.$on('new-problem', function (event, args) {
        var newProblem = {
            content: args.content,
            porder: args.porder
        };

        RestService.post("./php/mathprobs-post.php", JSON.stringify(newProblem)).then(function(res) {
            newProblem.pid = Number(res.data);
            $scope.problems.unshift(newProblem);
            $scope.setPage(1);
        });
    });

    //When an existing problem is edited
    $scope.$on('edit-problem', function (event, args) {
        var newProblem = {
            pid: args.pid,
            content: args.content,
            porder: args.porder
        };

        RestService.put("./php/mathprobs-put.php", JSON.stringify(newProblem));

        $scope.problems[args.index] = newProblem;
        $scope.setPage(args.page);
    });
}]);