window.App =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new App.Routers.Tasks()
    Backbone.history.start()
