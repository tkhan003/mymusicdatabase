class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) << [:name]
    devise_parameter_sanitizer.for(:account_update) << [:name]
  end

end
