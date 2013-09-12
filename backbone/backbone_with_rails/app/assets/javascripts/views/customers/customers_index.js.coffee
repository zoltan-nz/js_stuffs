$ ->
  class BackboneWithRails.Views.CustomersIndex extends Backbone.View

    template: JST['customers/index']

    render: ->
      $(@el).html(@template())
      this
