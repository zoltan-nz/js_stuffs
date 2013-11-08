# Author: Zoltan Debre
# Source code: https://github.com/szines/js_stuffs/tree/master/jquerymobile/cafevienna/source
#
# This Code is written in CoffeeScript.
#
# Templating engine: handlebars.js


$ ->

  #  Handlebars templates inserted in html under script tag
  #  Compiling create a javascript object from them.
  #  Data attributes inserted in the code.
  #  More details here: http://handlebarsjs.com/
  category_list_item_template   = Handlebars.compile($('#category_list_item_template').html())
  product_list_template         = Handlebars.compile($('#product_list_template').html())
  product_details_template      = Handlebars.compile($('#product_details_template').html())

  body = $('body')
  category_list = $('#categories')

  # Creating category list on the home page.
  category_list.append(category_list_item_template({categories: database.categories}))


  # Creating pages for all categories with list of products.
  $.each database.categories, (index, value) ->
    #  Using underscore.js where method to find connected products, based on category_id
    list_of_products = _.where(database.products, category_id: value.id)
    body.append(product_list_template({category: value, products: list_of_products}))

  # Creating product's detail pages.
  body.append(product_details_template({products: database.products}))

  $('#categories_page').bind 'pageinit', ->
    category_list.listview('refresh')

