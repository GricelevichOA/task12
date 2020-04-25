class ApplicationController < ActionController::Base

	include Pundit
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
	
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	private
	def user_not_authorized
		flash[:alert] = "You are not authorized to perform this action."
		redirect_to(welcome_path)
	end

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :username, :role_id)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :username, :role_id)}
	end
end
