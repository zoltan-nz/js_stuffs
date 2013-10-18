MiddlemanEmber::HandlebarsTemplate.options = {
    template_path: 'templates'
}

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :ember
activate :emblem, emblem_dir: "templates", emblem_ext: "emblem", ignore: true

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end