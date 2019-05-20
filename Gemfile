source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Devise gem for user aunthentication
gem 'devise'
gem 'bcrypt'
# Use pg as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Using Netflix's fast json_api in lieu of the default jbuilder. Read more: https://github.com/Netflix/fast_jsonapi
gem 'font-awesome-sass'
gem 'paranoia'
gem 'rack-cors'
gem 'money-rails'
gem 'semantic-ui-sass'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'database_cleaner'
  # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rails-controller-testing'
  gem 'rspec-its', '~> 1.2.0'
  gem 'rspec-rails', '~> 3.5.0'
  gem 'spring-commands-rspec'
  gem 'rails-perftest'
  gem 'faker'
  gem 'standard'
end

group :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
  gem 'simplecov',        require: false
  gem 'simplecov-rcov',   require: false
  gem 'site_prism'
  gem 'faraday'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard', '~> 2.11'
  gem 'guard-rspec',        require: false
  gem 'guard-rubocop',      require: false
  gem 'rubocop',            require: false
  gem 'rubocop-thread_safety', require: false
  gem 'rubocop-rspec',      require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
