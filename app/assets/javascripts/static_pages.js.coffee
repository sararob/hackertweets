# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http:#jashkenas.github.com/coffee-script/
#coffeescript

$ ->
	$('#languages .btn').on 'click', (e) ->
		console.log 'click', this, arguments
		element = $(e.currentTarget)
		e.preventDefault()
		$.ajax {
			url: element.attr('href')
			complete: (xhr, status) ->
				console.log 'complete', this, arguments
				$('#tweets').html xhr.responseText 
		}
