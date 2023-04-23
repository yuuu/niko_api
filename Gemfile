source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "rack-cors"
gem 'devise'
gem 'devise_token_auth'
gem 'devise-i18n'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "spring"
  gem 'rubocop', require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

