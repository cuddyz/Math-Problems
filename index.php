<html>
    <head>
        <title>Project 1</title>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular-sanitize.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular-animate.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.5.0/ui-bootstrap-tpls.js"></script>
        <script src="https://use.fontawesome.com/65c60834b5.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./css/main.css" />
    </head>
    <body>
        <div ng-app="mathApp" ng-controller="MainController" class="main">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="input-group left-search">
                    <input ng-model="searchTerm" type="text" class="form-control" placeholder="Search Keyword">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </span>
                </div>
                <div class="pages">
                    <ul ng-if="pager.pages.length" class="pagination">
                        <li ng-class="{disabled:pager.currentPage === 1}">
                            <a ng-click="setPage(1)">First</a>
                        </li>
                        <li ng-class="{disabled:pager.currentPage === 1}">
                            <a ng-click="setPage(pager.currentPage - 1)">Previous</a>
                        </li>
                        <li ng-repeat="page in pager.pages" ng-class="{active:pager.currentPage === page}">
                            <a ng-click="setPage(page)">{{page}}</a>
                        </li>
                        <li ng-class="{disabled:pager.currentPage === pager.totalPages}">
                            <a ng-click="setPage(pager.currentPage + 1)">Next</a>
                        </li>
                        <li ng-class="{disabled:pager.currentPage === pager.totalPages}">
                            <a ng-click="setPage(pager.totalPages)">Last</a>
                        </li>
                    </ul>
                </div>
                <ul class="nav navbar-nav right">
                    <li uib-tooltip="Undo Deletion" tooltip-placement="left-bottom"><i ng-if="deletedProblems.length > 0" class="fa fa-undo" aria-hidden="true" ng-click="undoDelete()"></i></li>
                    <li uib-tooltip="New Problem" tooltip-placement="left-bottom"><i class="fa fa-plus" aria-hidden="true" ng-click="newProblem()"></i></li>
                </ul>
            </nav>

            <div class="problems">
                <div class="panel panel-primary" ng-repeat="problem in currentProblems | filter:keywordFilter">
                    <div class="panel-heading">
                        <h3 class="panel-title">ID: {{ problem.pid }}</h3>
                        <i uib-tooltip="Move Up" tooltip-placement="top" class="fa fa-arrow-up" ng-click="moveUp(problem, $index)" aria-hidden="true"></i>
                        <i uib-tooltip="Move Down" tooltip-placement="top" class="fa fa-arrow-down" ng-click="moveDown(problem, $index)" aria-hidden="true"></i>
                        <i uib-tooltip="Edit" tooltip-placement="top" class="fa fa-pencil" ng-click="editProblem(problem, $index)" aria-hidden="true"></i>
                        <i uib-tooltip="Delete" tooltip-placement="top" class="fa fa-trash" ng-click="deleteProblem(problem.pid, $index)" aria-hidden="true"></i>
                    </div>
                    <div class="panel-body">
                        <p ng-bind-html="problem.content"></p>
                    </div>
                    <div ng-if="!problem.editingKeywords" class="panel-footer">
                        <p class="keywords">Keywords: <span>{{ problem.keywords }}</span></p>
                        <i ng-click="editKeywords(problem)" uib-tooltip="Edit keywords" tooltip-placement="top" class="fa fa-pencil edit-keyword" aria-hidden="true"></i>
                    </div>
                    <div ng-if="problem.editingKeywords" class="panel-footer editing-keywords">
                        <ul class="nav nav-pills" ng-repeat="keyword in problem.splitKeywords">
                            <li><a href="">{{ keyword }}</a><i ng-click="removeKeyword(problem, $index)" uib-tooltip="Remove keyword" tooltip-placement="top" class="fa fa-times remove-keyword" aria-hidden="true"></i></li>
                        </ul>
                        <ul class="nav nav-pills">
                            <li ng-if="!problem.addingKeyword"><p class="add-keyword"><i ng-click="addKeyword(problem)" uib-tooltip="Add keyword" tooltip-placement="top" class="fa fa-plus" aria-hidden="true"></i></p></li>
                            <li ng-if="problem.addingKeyword" class="adding-keyword">
                                <div class="input-group">
                                    <input ng-model="newKeyword" type="text" class="form-control" placeholder="Keyword" >
                                    <span class="input-group-btn">
                                        <button ng-click="submitKeyword(problem, newKeyword)" class="btn btn-default" type="button">Save</button>
                                    </span>
                                </div>
                            </li>
                        </ul>
                        <i ng-click="editKeywords(problem)" uib-tooltip="Done editing" tooltip-placement="top" class="fa fa-check edit-keyword" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>

        <script src="./js/app.js"></script>
        <script src="./js/mainController.js"></script>
        <script src="./js/pageService.js"></script>
        <script src="./js/restService.js"></script>
    </body>
</html>