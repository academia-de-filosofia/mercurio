class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable 

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  def self.find_for_google_apps_oauth(access_token, signed_in_resource=nil)
    email = access_token['info']['email']
    
    unless email.include? 'academiadefilosofia.org'
      raise "Invalid Domain"
    end
    
    if user = User.find_by_email(email)
      user
    else
      User.create!(:email => email, :password => Devise.friendly_token[0,20])
    end
  end
end
