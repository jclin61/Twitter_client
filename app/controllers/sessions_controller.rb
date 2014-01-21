class SessionsController < ApplicationController
  def create
  	#find or create user that match with the credentials
  	session[:access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:access_token_secret] = request.env['omniauth.auth']['credentials']['secret']

  	user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice: "You Are Now Signed In."
  end

  def show
    if session['access_token'] && session['access_token_secret']
      @user = client.user(include_entities: true)
    else
      redirect_to root_path
    end
  end

  def destroy
  	#destroy session by setting user as nil
  	session[:user_id] = nil
    redirect_to root_url, notice: "Signed Out Success"
  end
end
