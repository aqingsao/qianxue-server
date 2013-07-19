@setActiveNav("nav-noteBooks")

bookIdReg = /noteBooks\/(\d)/
angular.module('myapp', []).controller("NoteBookCtrl", ($scope, $http)->
  id = bookIdReg.exec(window.location.href)[1];
  $http.get('/api/noteBooks/' + id).success (noteBook) => $scope.noteBook = noteBook;
)  
