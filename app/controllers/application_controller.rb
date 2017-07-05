class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :date_of_birth, :blood_group, :gender, :address])
      devise_parameter_sanitizer.permit(:account_update) do |u| 
        u.permit(
          :current_password,
          :email, 
          :first_name,
          :last_name,
          :date_of_birth,
          :blood_group,
          :address, 
          :gender,
          :phone)
      end
    end 

end
