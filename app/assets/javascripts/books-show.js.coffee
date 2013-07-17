@setActiveNav("nav-books")

bookIdReg = /books\/(\d)/
angular.module('myapp', []).controller("BookCtrl", ($scope, $http)->
  id = bookIdReg.exec(window.location.href)[1];
  $http.get('/api/books/' + id).success (book) => $scope.book = book;
)  
