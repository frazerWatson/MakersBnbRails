var myApp = angular.module('MakersBnB',['ngRoute', 'templates']);

myApp.config(['$routeProvider', function($routeProvider) {
  
  $routeProvider
  .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])
