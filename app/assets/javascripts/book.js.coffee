angular.module('myapp', []).controller("BookCtrl", ($scope, $http)->
  id = 1;
  $http.get('/api/books/' + id).success (book) => $scope.book = book;
)  
