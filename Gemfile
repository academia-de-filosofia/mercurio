source 'http://rubygems.org'

gem 'rails', '3.1.0'
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
gem 'oa-openid', :require => 'omniauth/openid'
gem 'devise_invitable'

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
	gem 'pg'
end

# debbuging
# gem 'ruby-debug19'