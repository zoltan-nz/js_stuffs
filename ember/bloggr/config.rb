MiddlemanEmber::HandlebarsTemplate.options = {
    template_path: 'templates'
}

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

sprockets.append_path "libs/javascripts"
sprockets.append_path "libs/stylesheets"
sprockets.append_path "libs/fonts"
sprockets.append_path "libs/images"

activate :emblem
activate :emberscript


configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end