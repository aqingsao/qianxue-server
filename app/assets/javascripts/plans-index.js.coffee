@setActiveNav("nav-plans")

angular.module('myapp', []).controller("PlansCtrl", ($scope, $http)->
  $http.get('/api/plans').success (plans) => 
  	for plan in plans
	  	((plan) ->
  			$http.get("/api/books/" + plan.book_id).success (book) => plan.book = book
  		)(plan);

  	$scope.plans = plans;
)