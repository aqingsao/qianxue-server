@setActiveNav("nav-noteBooks")

angular.module('myapp', []).controller('NoteBooksCtrl', ($scope, $http) ->
  $http.get('/api/noteBooks').success (noteBooks) => $scope.noteBooks = noteBooks;

  $http.get('/api/plans').success (plans) => 
  	for noteBook in $scope.noteBooks
  		for plan in plans
  			noteBook.plan = plan if noteBook.id = plan.noteBook_id
)