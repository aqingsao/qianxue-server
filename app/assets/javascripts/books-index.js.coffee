@setActiveNav("nav-books")

angular.module('myapp', []).controller('BooksCtrl', ($scope, $http) ->
  id = 1;
  $http.get('/api/books').success (books) => $scope.books = books;
)