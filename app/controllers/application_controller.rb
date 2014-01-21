class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
	 #if session id is present, this will retrieve the session user id
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def client
		client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "Tkcz4gex3W9FP70jSI5tzg"
			config.consumer_secret     = "EZoeYxCrUVPl4RrRBMoVOQqq2fEmgMoV3sTnEss9g"
			config.access_token        = "1692654691-kQq5EpTPRB8icJjUuPjppmWq7rd0kYT3EXu1tFA"
			config.access_token_secret = "34MXVUrM7lqn5Gracb9dCz1oMI3tWdrHojO2HWNZ4gxge"
		end
    end
end
