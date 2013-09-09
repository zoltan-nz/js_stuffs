class App.Views.TasksIndex extends Backbone.View

  template: JST['index']

  render: ->
    console.log 'Rendering index...'
    @$el.html(@template)
    @

