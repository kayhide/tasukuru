activate :automatic_image_sizes

configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  set :relative_links, true

  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end



activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host = 'mikagami-dev.com'
  deploy.path = 'mikagami-dev.com/public_html/tasukuru'
  deploy.user = 'melocoton'
  deploy.port = 10022
  deploy.build_before = true
end
