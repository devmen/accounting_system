source 'https://rubygems.org'

gem 'rails', '3.2.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'devise'
gem "twitter-bootstrap-rails"
# Gems used only for assets and not required
# in production environments by default.
gem "haml"
gem "haml-rails"
gem "russian"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'simple_form'
gem "hpricot"
gem "ruby_parser"

case RbConfig::CONFIG['host_os']
when /darwin/i
  gem 'rb-fsevent'
  gem 'growl'
when /linux/i
  gem 'libnotify', ">= 0.7.2"
  gem 'rb-inotify', ">= 0.8.8"
when /mswin|windows/i
  gem 'rb-fchange'
  gem 'win32console'
  gem 'rb-notifu'
end


group :test do
  gem 'database_cleaner'
  gem 'rails3-generators' #mainly for factory_girl & simple_form at this point
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  #gem  'ZenTest', "~> 4.4.2"
  #gem  'autotest-rails' # if you're using rails
end

gem "guard", "~> 1.0.0"
gem "guard-bundler"
gem "guard-rails"
#gem "guard-livereload", ">= 0.4.0"
gem "guard-rspec"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
