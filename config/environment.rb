# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Mercurio::Application.initialize!

OpenID.fetcher.ca_file = "#{Rails.root}/config/ca-bundle.crt"