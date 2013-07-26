@setActiveNav("nav-noteBooks")

bookIdReg = /noteBooks\/(\d)/
angular.module('myapp', []).controller("NoteBookCtrl", ($scope, $http)->
  id = bookIdReg.exec(window.location.href)[1];
  $http.get('/api/noteBooks/' + id).success (noteBook) => 
  	$scope.noteBook = noteBook;
  	$http.get('/api/plans').success (plans) => 
  		for plan in plans
	  	  noteBook.plan = plan if noteBook.id = plan.noteBook_id
)  
