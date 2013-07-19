@setActiveNav("nav-noteBooks")

angular.module('myapp', []).controller('NoteBooksCtrl', ($scope, $http) ->
  id = 1;
  $http.get('/api/noteBooks').success (noteBooks) => $scope.noteBooks = noteBooks;
)