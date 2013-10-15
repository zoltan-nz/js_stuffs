#######################################
#  Setup ember application
#######################################

window.Todos = Em.Application.create
  rootElement: '#app'
  ready: ->
    @set 'Router.enableLogging', true


#######################################
#  VIEW
#######################################

#view = Em.View.create
#  templateName: 'todos.handlebars.js'
#
#view.append()

#######################################
#  MODELS
#######################################

Todos.ApplicationAdapter = DS.FixtureAdapter.extend()

Todos.Todo = DS.Model.extend
  title: DS.attr 'string'
  isCompleted: DS.attr 'boolean'


#######################################
#  ROUTERS
#######################################

Todos.Router.map ->
  @resource 'todos', path: '/'

Todos.TodosRoute = Em.Route.extend
  model: ->
    @store.find('todo')


#######################################
#  CONTROLLERS
#######################################

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

Todos.TodoController = Em.ObjectController.extend
  isCompleted: ((key, value) ->
    model = @get("model")
    if value == "undefined"
      model.get "isCompleted"
    else
      model.set "isCompleted", value
      model.save()
      value
  ).property('model.isCompleted')


#######################################
#  FIXTURES
#######################################

Todos.Todo.FIXTURES = [
  {
    id: 1
    title: 'Learn Ember.JS'
    isCompleted: true
  },{
    id: 2
    title: '...'
    isCompleted: false
  },{
    id: 3
    title: 'Profit!'
    isCompleted: true
  }
]

