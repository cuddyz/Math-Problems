mathApp.service('RestService', ['$http', function($http) {

    this.get = function (url) {
        var req = {
            method: 'GET',
            url: url
        };

        return http(req);
    };

    this.post = function (url, data) {
        var req = {
            method: 'POST',
            url: url,
            data: data
        };

        return http(req);
    };

    this.put = function (url, data) {
        var req = {
            method: "PUT",
            url: url,
            data: data
        };

        http(req).then(function(res) {
            console.log(res);
        })
    };

    this.delete = function (url, data) {
        var req = {
            method: "DELETE",
            url: url,
            data: data
        };

        http(req).then(function(res) {
            console.log(res);
        })
    };

    var http = function(req) {
        return $http(req);
    }


}]);