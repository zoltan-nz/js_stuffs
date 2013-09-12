window.BackboneWithRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BackboneWithRails.Routers.Customers()
    Backbone.history.start()

$ ->
  if $('body').data('controller') == 'customers'
    BackboneWithRails.init()