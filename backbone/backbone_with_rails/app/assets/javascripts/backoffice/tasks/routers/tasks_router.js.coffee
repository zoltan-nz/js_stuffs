class App.Routers.Tasks extends Backbone.Router
  routes:
    '': 'index',
    'entries/:id': 'show'

  index: ->
    console.log 'home page'
    view = new App.Views.TasksIndex()
    $('#backbone').html(view.render().el)

  show: (id) ->
    console.log "entry #{id}"