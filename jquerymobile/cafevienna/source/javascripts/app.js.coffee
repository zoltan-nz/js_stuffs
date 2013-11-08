# Author: Zoltan Debre
# Source code: https://github.com/szines/js_stuffs/tree/master/jquerymobile/cafevienna/source
#
# This Code is written in CoffeeScript.
#
# Templating engine: handlebars.js

# Online and offline version is implemented, status in cookie.
# If online database will be used, we have to wait until ajax query finished.
# For this reason, main javascript code stored in a function and called separately.

window.main = ->
  #  Handlebars templates inserted in html under script tag
  #  Compiling create a javascript object from them.
  #  Data attributes inserted in the code.
  #  More details here: http://handlebarsjs.com/
  category_list_item_template = Handlebars.compile($('#category_list_item_template').html())
  product_list_template = Handlebars.compile($('#product_list_template').html())
  product_details_template = Handlebars.compile($('#product_details_template').html())

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

  # Need for proper list generation.
  $('#categories_page').bind 'pageinit', ->
    category_list.listview('refresh')

  # Setup status in option panel. Depend of content of the cookie.
  if $.cookie('use_database') == 'true'
    $('#database_flip option:last').prop('selected', true)
    $('#database_flip').slider('refresh')

  #  Prevent default submit
  $('#database_switcher').submit ->
    false

  # If user click on refresh button, read flip status and save in cookie.
  $('#database_switcher_submit').on 'click', ->
    @preventDefault
    value = $('#database_flip').val()
    console.log(value)
    if value == 'on'
      $.cookie('use_database', true)
    else
      $.cookie('use_database', false)
    location.reload()

#  If online database used, we have to wait download finished, if not, just document.ready.

if $.cookie('use_database') == 'true'
  $(document).ajaxComplete ->
    main()
else
  $ ->
    main()


