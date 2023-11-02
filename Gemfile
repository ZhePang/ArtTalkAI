source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'
gem 'rails', '6.0.4'

# for Heroku deployment 
group :development, :test do
  gem 'sqlite3', '1.4'
  gem 'bootstrap', '~> 5.0'
  gem 'byebug'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '>= 2.15'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'ZenTest', '4.11.2'
end

group :development do
    # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
    gem 'web-console', '>= 3.3.0'
    gem 'listen', '~> 3.2'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'simplecov', :require => false
end
group :production do
  gem 'pg', '< 1.0'
end

# Gems used only for assets and not required
# in production environments by default.

gem 'sass-rails', '>= 6'
gem 'uglifier', '>= 2.7.1'
gem 'jquery-rails'