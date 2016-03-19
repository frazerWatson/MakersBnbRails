controllers.controller('ListingsController', ['$http', '$scope', function($http, $scope) {

    return $http.get('/user/spaces.json').success(function(response) {
        $scope.spaces = response;
    })

}])
