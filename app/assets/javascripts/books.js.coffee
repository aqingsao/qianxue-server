# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

angular.module('myapp', []).controller('BooksCtrl', ($scope, $http) ->
  id = 1;
  $http.get('/api/books').success (books) => $scope.books = books;
)