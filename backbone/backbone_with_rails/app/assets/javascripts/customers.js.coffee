window.BackboneWithRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneWithRails.Routers.Customers()
    Backbone.history.start()