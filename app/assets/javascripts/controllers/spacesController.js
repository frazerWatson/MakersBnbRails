controllers.controller('SpacesController', ['$http', '$scope', function($http, $scope) {

    return $http.get('/spaces.json').success(function(response) {
        $scope.spaces = response;
    })

}])
