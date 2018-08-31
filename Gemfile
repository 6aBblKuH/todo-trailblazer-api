# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'devise'
gem 'devise_token_auth'
gem 'multi_json'
gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails'
gem 'roar-jsonapi'
gem 'trailblazer-rails'

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'spring'
  gem 'listen'
  gem 'pry'
  gem 'rubocop'
end
