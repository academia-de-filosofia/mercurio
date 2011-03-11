class AuthenticationsController < Devise::OmniauthCallbacksController

  def google_apps
    redirect_to :people
  end
  
end