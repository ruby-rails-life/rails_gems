source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ENV['NOKOGIRI_USE_SYSTEM_LIBRARIES'] = 'YES'
gem 'nokogiri'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'bootstrap-sass'
gem 'rails', '~> 5.0.3'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
gem 'mysql2'

gem 'rails-i18n'
gem 'ransack'
gem 'baby_squeel'
gem 'config'
gem 'active_decorator'
gem 'active_hash'
gem 'active_type'
gem 'acts_as_paranoid', '~> 0.5.0'
gem 'annotate'
gem 'breadcrumbs_on_rails'
gem 'carrierwave'
gem 'devise'
gem 'devise-bootstrap-views'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'fog'
gem 'kaminari'
gem 'mini_magick'
gem 'rails_admin', git: 'git://github.com/sferik/rails_admin.git'
gem 'seed_dump'
gem 'simple_form'
gem 'activerecord-import'
gem 'font-awesome-rails'
gem 'data-confirm-modal'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'timecop'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-footnotes'
  gem 'rubocop', require: false
  gem 'brakeman', :require => false
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'view_source_map'
  gem 'rails_autolink'
  gem 'enumerize'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
