Plain.CategoriesRoute = Em.Route.extend
	model: ->
		@store.findAll('category')
		
