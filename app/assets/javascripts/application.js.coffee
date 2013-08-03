myapp = angular.module('myapp', [])

@setActiveNav = (name) ->
	$("ul.nav li").each (index, element) =>
		if $(element).attr("id") == name
			$(element).addClass("active")
		else
			$(element).removeClass("active")

Date::asString = ->
  "#{this.getFullYear()}-#{this.getMonth()+1}-#{this.getDate()} #{this.getHours()}:#{this.getMinutes()}:#{this.getSeconds()}"