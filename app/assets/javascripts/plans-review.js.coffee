@setActiveNav("nav-plans")

planIdReg = /plans\/(\d)/
calcDate = (timeInSeconds) ->
	Math.floor(timeInSeconds / 86400)

angular.module('myapp', []).controller("PlanCtrl", ($scope, $http)->
  id = planIdReg.exec(window.location.href)[1];
  $http.get('/api/plans/' + id).success (plan) => 
  	plan.remaining_date = calcDate(plan.remaining_date)
  	plan.due_date = new Date(plan.due_date)

  	$http.get('/api/noteBooks/'+plan.noteBook_id).success (noteBook) =>
  		plan.noteBook = noteBook

  	$scope.plan = plan
)

$(".note").click ()->
	$(".note .note-front").hide();
	$(".note .note-back").show();
