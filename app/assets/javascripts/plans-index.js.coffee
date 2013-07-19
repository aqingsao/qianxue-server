@setActiveNav("nav-plans")

angular.module('myapp', []).controller("PlansCtrl", ($scope, $http)->
  $http.get('/api/plans').success (plans) => 
  	for plan in plans
	  	((plan) ->
  			$http.get("/api/noteBooks/" + plan.noteBook_id).success (noteBook) => plan.noteBook = noteBook
  		)(plan);

  	$scope.plans = plans;
)