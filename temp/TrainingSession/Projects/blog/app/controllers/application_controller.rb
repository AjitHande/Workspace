class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_pemrmitted_parameters,  if: :devise_controller?

  protected

  def configure_pemrmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
