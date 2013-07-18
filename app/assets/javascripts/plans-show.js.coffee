@setActiveNav("nav-plans")

planIdReg = /plans\/(\d)/
calcDate = (timeInSeconds) ->
	timeInDays = timeInSeconds / 86400
	days = Math.floor(timeInDays)
	days + "天"

angular.module('myapp', []).controller("PlanCtrl", ($scope, $http)->
  id = planIdReg.exec(window.location.href)[1];
  $http.get('/api/plans/' + id).success (plan) => 
  	plan.remaining_date = calcDate(plan.remaining_date)
  	$http.get('/api/books/'+plan.book_id).success (book) =>
  		plan.book = book	
  		console.log(plan.due_date + ", " + plan.remaining_date)
  	$scope.plan = plan
)  

