function BookCtrl($scope, $http) {
  var id = 1;
  $http.get('/api/book/' + id).success(function(book) {
    $scope.book = book;
  });
}