var controllers = angular.module('controllers', []);
var myApp = angular.module('MakersBnB',['ngRoute', 'templates', 'controllers']);

myApp.config(['$routeProvider', function($routeProvider) {
  
  $routeProvider.when('user/listings', { templateUrl: 'listings.html', controller: 'ListingsController' })
                .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])
