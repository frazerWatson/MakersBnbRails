var myApp = angular.module('MakersBnB',['ngRoute', 'templates']);

myApp.config(['$routeProvider', function($routeProvider) {
  
  $routeProvider.when('requests/index', { templateUrl: 'requestsIndex.html', controller: 'RequestsController'})
  .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])