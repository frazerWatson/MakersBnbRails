controllers.controller('DetailsController', ['$http', '$scope', '$location', function($http, $scope, $location) {
  var url = $location.absUrl().slice(21, -1)
  var spaceId = url.match(/\d+/)[0]
  
  return $http.get('/spaces/' + spaceId).success(function(response) {
    $scope.space = response;
  })
}])