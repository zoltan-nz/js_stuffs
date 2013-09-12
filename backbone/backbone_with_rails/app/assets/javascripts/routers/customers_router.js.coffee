class BackboneWithRails.Routers.Customers extends Backbone.Router

  routes:
    '': 'index'
    'customers/:id': 'show'

  index: ->
    view = new BackboneWithRails.Views.CustomersIndex()
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"
