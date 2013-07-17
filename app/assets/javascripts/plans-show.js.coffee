@setActiveNav("nav-plans")

planIdReg = /plans\/(\d)/
angular.module('myapp', []).controller("PlanCtrl", ($scope, $http)->
  id = planIdReg.exec(window.location.href)[1];
  $http.get('/api/plans/' + id).success (plan) => 
  	$http.get('/api/books/'+plan.book_id).success (book) =>
  		plan.book = book	
  	$scope.plan = plan
)  
