source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '~> 4.0'
gem 'activeresource', :require => 'active_resource'

gem 'faraday'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails'
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platform: :ruby

gem 'uglifier', '>= 1.0.3'

gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'paperclip'
gem 'aws-sdk' # For uploads to s3 because Heroku doesn't store files

group :development do
	gem 'awesome_print'
	gem 'sqlite3'
  gem 'rubocop'
end

group :production do
  gem 'thin'
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'launchy'
  gem 'pry'
end
