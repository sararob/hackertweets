# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http:#jashkenas.github.com/coffee-script/


# # jQuery(function(){console.log('rdy!')});
# $ ->
# 	console.log 'rdy'
# 	$('#languages .btn').on 'ajax:complete', (event, xhr, status)->
# 		console.log 'complete', this, arguments 
# 		$('#tweets').html xhr.responseText
# 		
# 
# ## jQuery implementation
# 
# # javascript
# $(function(){
# 	$('#stuff').on('click', function(e) {
# 		$.ajax({})
# 	})
# });

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
