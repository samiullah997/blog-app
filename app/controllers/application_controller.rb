class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # This method is used to configure the parameters that are allowed to be passed to the Devise controllers.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name password email])
    devise_parameter_sanitizer.permit(:acount_update, keys: %i[name password email bio photo])
  end
end
