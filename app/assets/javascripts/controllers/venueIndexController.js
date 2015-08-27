angular.module('ArsUnita').controller('VenueIndexController', function(Venue, $scope){
  Venue.query().then(function(data){
    return $scope.venues = data;
  });
});