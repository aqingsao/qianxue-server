@setActiveNav("nav-plans")
angular.module('myapp', []).controller("PlansCtrl", ($scope, $http)->
  $http.get('/api/plans').success (plans) => 
  	for plan in plans
  		$http.get("/api/books/" + plan.book_id).success (book) =>
  			plan.book = book

  	$scope.plans = plans;
)