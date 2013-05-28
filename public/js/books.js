function BooksCtrl($scope, $http) {
  $http.get('/api/books').success(function(books) {
    $scope.books = books;
  });

  console.log("in BooksCtrl");
 
  $scope.count = function() {
    $scope.todos.push({text:$scope.todoText, done:false});
    $scope.todoText = '';
  };
}