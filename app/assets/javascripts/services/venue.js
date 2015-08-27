angular.module('ArsUnita').factory('Venue', function($http){
  return {
    query: function() {
      return $http.get('/api/venues').then(function(data){
        return data.data;
      });
    }
  }
});