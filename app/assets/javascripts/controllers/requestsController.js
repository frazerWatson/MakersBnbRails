controllers.controller('RequestsController', function($http, $scope) {
  
  return $http.get('/account').success(function(response) {
    $scope.requests_made = response;
  })
})