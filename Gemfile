source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'hirb'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'rails-footnotes', '>= 3.7.9'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# omniauth gem for Twitter sign in 
gem 'omniauth-twitter'

# carrierwave Upload
gem 'carrierwave'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

gem 'bootstrap-sass'

gem 'simple_form'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]