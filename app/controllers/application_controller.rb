class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :First_Name , :Last_Name, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :First_Name , :Last_Name, :phone_number])
  end

end
