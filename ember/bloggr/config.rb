# Livereload
activate :livereload, host: '0.0.0.0'
config[:file_watcher_ignore] += [ /.idea\// ]
config[:file_watcher_ignore] += [ /api\// ]

#Ember
activate :ember
activate :emblem

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

sprockets.append_path "libs/javascripts"
#sprockets.append_path "libs/stylesheets"
#sprockets.append_path "libs/fonts"
#sprockets.append_path "libs/images"



configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end