Plain.CategoriesController = Em.ArrayController.extend
	root: (->
		@.get('content').filterProperty('name', 'Elso')
	).property('content.@each')
