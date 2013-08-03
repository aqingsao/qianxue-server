@setActiveNav("nav-noteBooks")

angular.module('myapp', []).controller('NoteBooksCtrl', ($scope, $http) ->
  $http.get('/api/noteBooks').success (noteBooks) => 
  	for noteBook in noteBooks
  		noteBook.created_at = new Date(noteBook.created_at).asString()
  	$scope.noteBooks = noteBooks;
)