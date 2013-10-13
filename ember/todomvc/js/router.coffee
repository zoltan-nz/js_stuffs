Todos.Router.map ->
  @resource 'todos', path: '/'

Todos.TodosRoute = Em.Route.extend
  model: ->
    @store.find('todo')