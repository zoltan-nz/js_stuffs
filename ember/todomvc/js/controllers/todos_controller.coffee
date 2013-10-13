Todos.TodosController = Em.ArrayController.extend
  actions:
    createTodo: ->
      title = @get 'newTitle'
      return if !title.trim()

      todo = @store.createRecord 'todo',
        title: title
        isCompleted: false

      @set 'newTitle', ''

      todo.save()

  remaining:  (->
    @filterBy('isCompleted', false).get('length')
  ).property('@each.isCompleted')

  inflection: (->
    remaining = @.get('remaining')
    remaining == 1 ? 'item' : 'items'
  ).property('remaining')


