@setActiveNav("nav-my")
angular.module('myapp', []).controller("BooksCtrl", ($scope, $http)->
  $http.get('/api/books/my').success (books) => $scope.books = books;
)  
