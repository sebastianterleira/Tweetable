class ApplicationController < ActionController::Base
	skip_before_action :verify_authenticity_token, :only => [:create]
	before_action :authenticate_user!, except: %i[index show]
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :avatar])
		devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :avatar])
  end
end
