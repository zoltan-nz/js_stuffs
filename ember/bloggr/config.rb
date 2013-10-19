MiddlemanEmber::HandlebarsTemplate.options = {
    template_path: 'templates'
}

require 'bundler/setup'
Bundler.require
require 'ember/source'
require 'handlebars/source'

activate :livereload
activate :emblem
activate :emberscript

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

sprockets.append_path "libs/javascripts"
sprockets.append_path "libs/stylesheets"
sprockets.append_path "libs/fonts"
sprockets.append_path "libs/images"

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end