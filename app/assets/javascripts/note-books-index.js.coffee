@setActiveNav("nav-noteBooks")

angular.module('myapp', []).controller('NoteBooksCtrl', ($scope, $http) ->
  $http.get('/api/noteBooks').success (noteBooks) => 
  	$scope.noteBooks = noteBooks;
)