$ ->
  class App.Views.TasksIndex extends Backbone.View

    template: (params) -> Mustache.to_html($('#app-template').html(), params)

    render: ->
      console.log 'Rendering index...'
      @$el.html(@template(entries: 'Entries goes here...'))
      @

