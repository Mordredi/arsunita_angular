angular.module('ArsUnita').config(function($routeProvider, $locationProvider){
  $routeProvider
    .when('/', {
      templateUrl: "main/index.html",
    })
    .when('/venues', {
      templateUrl: "venues/index.html",
      controller: 'VenueIndexController'
    });

    $locationProvider.html5Mode(true);
});