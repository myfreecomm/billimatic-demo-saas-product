source 'https://rubygems.org'
ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Official Sass port of Bootstrap 2 and 3. Read more: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '~> 3.3.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.4'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4', group: :doc

# A Ruby client for the Billimatic API. Read more: https://github.com/myfreecomm/billimatic-client-ruby
gem 'billimatic-client', '~> 0.4.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Puma as the app server
gem 'puma', '~> 3.4'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rails_12factor', '~> 0.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 8.2'
  gem 'rake', '~> 11.1'
  gem 'rspec-rails', '~> 3.3'
  gem 'factory_girl_rails', '~> 4.7'
  gem 'database_cleaner', '~> 1.5'
  gem 'rspec-collection_matchers', '~> 1.1'
  gem 'rspec-its', '~> 1.2'
  gem 'shoulda-matchers', '~> 3.0'
  gem 'test_notifier', '~> 2.0'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 0.5', require: nil
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.1'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.7'
  gem 'spring-commands-rspec', '~> 1.0'

  gem 'guard-rspec', '~> 4.6', require: false

  gem 'foreman', '~> 0.81'
end
