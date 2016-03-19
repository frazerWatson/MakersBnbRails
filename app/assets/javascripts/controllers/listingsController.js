controllers.controller('ListingsController', function($http, $scope) {

    return $http.get('/user/spaces.json').success(function(response) {
        $scope.spaces = response;
    })

})
