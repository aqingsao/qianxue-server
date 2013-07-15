# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

function BookCtrl($scope, $http) {
  var id = 1;
  $http.get('/api/book/' + id).success(function(book) {
    $scope.book = book;
  });
}