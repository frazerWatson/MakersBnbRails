var myApp = angular.module('MakersBnB',['ngRoute', 'templates', 'controllers']);
var controllers = angular.module('controllers', []);

myApp.config(['$routeProvider', function($routeProvider) {

  $routeProvider.when('/account/requests', { templateUrl: 'requestsIndex.html', controller: 'RequestsController'})
  .when('/spaces/:id/requests/new', { templateUrl: 'newRequest.html', controller: 'RequestsController'})
  .when('/spaces/:id/details/', { templateUrl: 'spaceDetails.html', controller: 'DetailsController'})
  .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])
