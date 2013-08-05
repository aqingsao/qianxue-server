@setActiveNav("nav-noteBooks")

myapp = angular.module('myapp', [])

myapp.config ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

angular.module('myapp', []).controller('NoteBooksCtrl', ($scope, $http) ->
  $http.get('/api/noteBooks').success (noteBooks) => 
  	for noteBook in noteBooks
  		noteBook.created_at = new Date(noteBook.created_at).asString()
  	$scope.noteBooks = noteBooks;

  $scope.form = {display: false, noteBook:{name: "", description:""}};
  $scope.displayNoteBookForm= ->
  	$scope.form.display = true;
  $scope.hideNoteBookForm= ->
  	$scope.form.display = false;
  $scope.createNoteBook = ->
 		# $scope.form.noteBook.utf8 = $("form[name='noteBookForm'] input[name='utf8']").val()
 		# $scope.form.noteBook.authenticity_token = $("form[name='noteBookForm'] input[name='authenticity_token']").val()
  	$http.post("/api/noteBooks", $scope.form).success (noteBook) =>  
  		noteBook.created_at = new Date(noteBook.created_at).asString()		
				$scope.noteBooks.push noteBook
				$scope.form.display = false;
)