(function() {
  $(function() {
    var body, category_list, category_list_item_template, product_details_template, product_list_template;
    category_list_item_template = Handlebars.compile($('#category_list_item_template').html());
    product_list_template = Handlebars.compile($('#product_list_template').html());
    product_details_template = Handlebars.compile($('#product_details_template').html());
    body = $('body');
    category_list = $('#categories');
    category_list.append(category_list_item_template({
      categories: database.categories
    }));
    $.each(database.categories, function(index, value) {
      var list_of_products;
      list_of_products = _.where(database.products, {
        category_id: value.id
      });
      return body.append(product_list_template({
        category: value,
        products: list_of_products
      }));
    });
    body.append(product_details_template({
      products: database.products
    }));
    return $('#categories_page').bind('pageinit', function() {
      return category_list.listview('refresh');
    });
  });

}).call(this);
