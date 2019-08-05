source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'duktape'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

group :production do
    # Use Redis adapter to run Action Cable in production
    #gem 'redis'
    # Use ActiveModel has_secure_password
    gem 'bcrypt'
    # Use ActiveStorage variant
    gem 'mini_magick'
    #Use postgresql
    gem 'pg'
    
    gem 'rails_12factor'
    
    gem 'aws-sdk-s3'

    gem 'paperclip'
end
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
    # Use sqlite3 as the database for Active Record
    gem 'sqlite3'
end

group :development do
    # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
    gem 'web-console', '>= 3.3'
end

group :test do
    # Adds support for Capybara system testing and selenium driver
    gem 'capybara'
    gem 'selenium-webdriver'
    # Easy installation and use of chromedriver to run system tests with Chrome
    gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# spree
#gem 'devise'
gem 'spree_core'
gem 'spree_api'
gem 'spree_cmd'
gem 'spree_backend'
gem 'spree_frontend'
gem 'spree_sample'
gem 'spree_auth_devise'
gem 'spree_gateway'