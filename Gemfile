source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Devise gem for user aunthentication
gem 'devise'
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
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'jbuilder', '~> 2.5'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'database_cleaner'
  gem 'pdf-inspector'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-remote'
  gem 'pry-rescue'
  gem 'rails-controller-testing'
  gem 'rails-perftest'
  gem 'rspec-its', '~> 1.2.0'
  gem 'rspec-rails', '~> 3.5.0'
  gem 'spring-commands-rspec'
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
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'guard', '~> 2.11'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'rubocop',            require: false
  gem 'rubocop-rspec',      require: false
  gem 'rubocop-thread_safety', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
