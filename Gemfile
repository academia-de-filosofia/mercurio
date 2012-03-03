source 'http://rubygems.org'

gem 'rails', '3.2.0'
gem 'inherited_resources'
gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'heroku'
gem 'thin'

#view
gem 'haml'
gem 'jquery-rails'
gem 'css3buttons'
gem "compass"
gem "will_paginate"
gem "sass"

# authentication
gem 'devise'
gem 'devise_invitable'
gem 'omniauth'
gem 'omniauth-openid'
#gem 'oa-openid'


# Gems used only for assets and not required
# in production environments by default.
#group :assets do
#  gem 'sass-rails', "  ~> 3.2.3"
#  gem 'coffee-rails', "~> 3.2.1"
#  gem 'uglifier', "~> 1.0.3"
#end


#amazon
gem "aws-s3"

#upload
gem "paperclip"

group :test, :development do
  gem "rspec-rails"
  gem 'webrat'
  gem 'guard'
  gem 'guard-spork'  
  gem 'spork'
  gem 'rb-fsevent'
  gem 'growl'
end

group :production do 
	gem 'therubyracer-heroku', '0.8.1.pre3' # you will need this too
	#gem 'pg'
end

# debbuging
# gem 'ruby-debug19'