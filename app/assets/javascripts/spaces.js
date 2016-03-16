var myApp = angular.module('MakersBnB',['ngRoute', 'templates']);

myApp.config(['$routeProvider', function($routeProvider) {
  
  $routeProvider.when('spaces/new', { templateUrl: 'newSpace.html', controller: 'NewSpaceController'})
  .otherwise({ templateUrl: 'mainIndex.html', controller: 'SpacesController'})
  
}])