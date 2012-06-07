require 'bundler'
Bundler.setup :default, (ENV['RACK_ENV'] || 'development').to_sym

require 'sprockets'
require 'compass'
require 'sprockets-sass'
require 'sprockets-helpers'
require 'bootstrap-sass'
require 'handlebars_assets'
require 'coffee-script'
require File.dirname(__FILE__) + '/app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/templates' # for Handlebars templates
  environment.append_path 'assets/images'

  environment.append_path HandlebarsAssets.path
  # Adds Twitter Bootstrap Javascripts
  environment.append_path Compass::Frameworks['bootstrap'].templates_directory + '/../vendor/assets/javascripts'
  run environment
end

run Sinatra::Application