var myApp = angular.module('MakersBnB',['ngRoute', 'templates', 'controllers']);
var controllers = angular.module('controllers', []);

myApp.config(['$routeProvider', function($routeProvider) {

  $routeProvider.when('/account/requests', { templateUrl: 'requestsIndex.html', controller: 'RequestsController'})
  .when('user/listings', { templateUrl: 'listings.html', controller: 'ListingsController' })
  .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])
