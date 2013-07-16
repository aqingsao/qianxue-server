myapp = angular.module('myapp', [])

@setActiveNav = (name) ->
	$("ul.nav li").each (index, element) =>
		if $(element).attr("id") == name
			$(element).addClass("active")
		else
			$(element).removeClass("active")
