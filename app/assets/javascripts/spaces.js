var myApp = angular.module('MakersBnB',['ngRoute', 'templates', 'controllers']);
var controllers = angular.module('controllers', []);

myApp.config(['$routeProvider', function($routeProvider) {

  $routeProvider
      .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])
