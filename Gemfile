source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'active_model_serializers'
gem 'devise'
gem 'devise_token_auth'
gem 'og'
gem 'puma'
gem 'rack-cors'
gem 'rails'
gem 'trailblazer'

group :development, :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'pry'
end
