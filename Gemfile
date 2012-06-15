source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Postgresql driver
gem 'pg'

# Gravatar for user avatars
gem 'gravatar_image_tag'

# Simple form used for twitter bootstrap styled forms.
gem 'simple_form'

# Friendly Identifier is used to enable freindly url slugs.
gem 'friendly_id'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

gem 'rspec-rails', :group => [:test, :development]

group :test do

  # testing stuff
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'

  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent'
    gem 'growl'
  end

end

group :development do

  # webrick alternative that is quite
  gem 'thin'

  # stops asset requests being logged
  gem 'quiet_assets'

end
