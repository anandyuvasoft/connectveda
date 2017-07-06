class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"], request.env["omniauth.params"]["profile_type"])
    if @user.persisted?
      sign_in @user
      # set_flash_message(:notice, :success)
      redirect_to root_url
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_path
    end
  end
end
