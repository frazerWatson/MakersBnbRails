controllers.controller('SpacesController', function($http, $scope) {

    return $http.get('/spaces.json').success(function(response) {
        $scope.spaces = response;
    })

})
