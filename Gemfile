# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0', '>= 7.0.3.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development do
  # E-mail opener [https://github.com/ryanb/letter_opener]
  gem 'letter_opener', '~> 1.4', '>= 1.4.1'
end

# Define and serve live-updating Swagger JSON for Ruby apps [https://github.com/fotinakis/swagger-blocks]
gem 'swagger-blocks', '~> 3.0'

# Kaminari is a Scope & Engine based customizable and sophisticated paginator [https://github.com/kaminari/kaminari]
gem 'kaminari', '~> 1.2', '>= 1.2.2'

# Useful, common monads in idiomatic Ruby [https://github.com/dry-rb/dry-monads]
gem 'dry-monads', '~> 1.4'

# A simple validation library [https://github.com/dry-rb/dry-validation]
gem 'dry-validation', '~> 1.8', '>= 1.8.1'

# Typed structs and value objects [https://github.com/dry-rb/dry-struct]
gem 'dry-struct', '~> 1.4'

# Type system for Ruby supporting coercions, constraints and complex types like structs, value objects, enums etc [https://github.com/dry-rb/dry-types]
gem 'dry-types', '~> 1.5', '>= 1.5.1'

# DSL for declaring params and options of the initializer [https://github.com/dry-rb/dry-initializer]
gem 'dry-initializer', '~> 3.1', '>= 3.1.1'

# Flexible authentication solution for Rails with Warden [https://github.com/heartcombo/devise]
gem 'devise', '~> 4.8', '>= 4.8.1'

# Doorkeeper is an OAuth 2 provider for Rails and Grape [https://github.com/doorkeeper-gem/doorkeeper/]
gem 'doorkeeper', '~> 5.5', '>= 5.5.4'

# Simple, efficient background processing for Ruby [https://github.com/mperham/sidekiq]
gem 'sidekiq', '~> 6.4', '>= 6.4.1'

# Object-based searching [https://github.com/activerecord-hackery/ransack]
gem 'ransack', github: 'activerecord-hackery/ransack'

group :development, :test do
  gem 'awesome_print'
  gem 'brakeman'
  gem 'bullet'
  gem 'byebug', '~> 11.1', '>= 11.1.3'
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'factory_bot_rails'
  gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
  gem 'guard-rspec', require: false
  gem 'pry', '~> 0.14.1'
  gem 'rubocop', require: false
end

group :test do
  gem 'bundle-audit', require: false
  gem 'database_cleaner'
  gem 'mocha', '~> 1.13'
  gem 'rails_best_practices'
  gem 'rspec-rails'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubycritic', require: false
  gem 'shoulda', '~> 4.0'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'test-prof'
end
