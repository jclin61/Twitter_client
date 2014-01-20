class SessionsController < ApplicationController
  def create
  	#find or create user that match with the credentials
  	user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice: "You Are Now Signed In."
  end

  def destroy
  	#destroy session by setting user as nil
  	session[:user_id] = nil
    redirect_to root_url, notice: "Signed Out Success"
  end
end
