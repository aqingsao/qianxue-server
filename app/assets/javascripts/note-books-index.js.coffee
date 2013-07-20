@setActiveNav("nav-noteBooks")

angular.module('myapp', []).controller('NoteBooksCtrl', ($scope, $http) ->
  id = 1;
  $http.get('/api/noteBooks').success (noteBooks) => 
  	for noteBook in noteBooks
  		noteBook.planStatus = 'UNPLANNED'
  	$scope.noteBooks = noteBooks;

  $http.get('/api/plans').success (plans) => 
  	plannedBooks = (plan.noteBook_id for plan in plans)
  	for noteBook in $scope.noteBooks
  		noteBook.planStatus = 'PLANNED' if plannedBooks.indexOf(noteBook.id) >= 0
)