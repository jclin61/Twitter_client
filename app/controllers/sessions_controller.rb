class SessionsController < ApplicationController
  def create
  	#find or create user that match with the credentials
  	session[:access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:access_token_secret] = request.env['omniauth.auth']['credentials']['secret']

  	user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to show_path, notice: "You Are Now Signed In."
  end

  def show
    if session['access_token'] && session['access_token_secret']
      #specify client.user's info as @user
      @user = client.user(include_entities: true)

      #call client's home_timeline
      @home = client.home_timeline  
    else
      
    end

  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Signed out'
  end

  def update
    # :comment pass status update input from show.html
    status_update = params[:comment]
    @tweet = client.update(status_update)
    redirect_to "/profile"
  end
end
