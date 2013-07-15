BookCtrl = ($scope, $http)->
  id = 1;
  $http.get('/api/book/' + id).success (book) =>
    $scope.book = book;
  
