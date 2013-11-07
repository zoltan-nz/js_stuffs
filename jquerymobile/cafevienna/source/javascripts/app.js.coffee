$ ->
  category_list_template_source = $('#category_list').html()
  category_list_template = Handlebars.compile(category_list_template_source)
  list = $('#categories')
  body = $('body')
  $.each database.categories, (index, value) ->
    list.append('<li><a href="#category_'+value.id+'"><img src="'+value.image+'"/><h3>'+value.name+'</h3></a></li>')
    category_page_html = category_list_template({id: value.id})
    body.append(category_page_html)
  list.listview('refresh')



