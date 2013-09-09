$ ->

	TodoItem = Backbone.Model.extend()
	TodoView = Backbone.View.extend()

	todoItem = new TodoItem({
	  description: 'Pick up milk',
		status: 'incomplete'
		})

	$('body').on('click', -> console.log @)