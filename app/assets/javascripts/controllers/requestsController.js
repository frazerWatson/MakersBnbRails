controllers.controller('RequestsController', function($http, $scope) {

    $http.get('/account').success(function(response) {
        $scope.requests_made = response;
    })

    $http.get('/user/spaces').success(function(response) {
        $scope.requests_received = response;
    })

})
