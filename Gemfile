source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bcrypt',       '~> 3.1'
gem 'sprockets',    '~> 4.0'
gem 'carrierwave',  '~> 2.2'
gem 'cloudinary',   '~> 1.20'
gem 'haml-rails',   '~> 2.0'
gem 'rexml',        '~> 3.2', '>= 3.2.4'

gem 'rails',        '~> 6.1.3', '>= 6.1.3.1'
gem 'pg',           '~> 1.1'
gem 'puma',         '~> 5.0'
gem 'sass-rails',   '>= 6'
gem 'webpacker',    '~> 5.0'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.7'
gem 'bootsnap',     '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug',           platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails',     '~> 2.7'
  gem 'rspec-rails',      '~> 5.0'
  gem 'factory_bot',      '~> 4.8', '>= 4.8.2'
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
end

group :development do
  gem 'web-console',        '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen',             '~> 3.3'
  gem 'spring',             '~> 2.1'
end

group :test do
  gem 'capybara',           '>= 3.26'
  gem 'selenium-webdriver', '~> 3.142.7'
  gem 'webdrivers',         '~> 4.6'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
