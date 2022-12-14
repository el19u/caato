# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'image_processing', '~> 1.2'
gem 'jbuilder', '~> 2.7'
gem 'net-imap', require: false
gem 'net-pop', require: false
gem 'net-smtp', require: false
gem 'pg', '~> 1.4', '>= 1.4.2'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.6'
gem 'redis', '~> 4.0'
gem 'sass-rails', '>= 6'
gem 'sorcery', '~> 0.16.3'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  gem 'rubocop-rails', '~> 2.15', '>= 2.15.2', require: false
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
