class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_apps
    omniauth = env["omniauth.auth"]
    
    @user = User.find_for_google_apps_oauth(omniauth, current_user)

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider']
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.google_apps_data"] = omniauth
      redirect_to new_user_registration_url
    end
  end

end