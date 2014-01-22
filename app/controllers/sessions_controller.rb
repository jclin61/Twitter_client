class SessionsController < ApplicationController
  def create
    #signed in credentials stored in session to post on users' behalf
    session[:access_token] = request.env['omniauth.auth']['credentials']['token']
    session[:access_token_secret] = request.env['omniauth.auth']['credentials']['secret']
    redirect_to show_path, notice: 'Signed in'
  end

  def show
    if session['access_token'] && session['access_token_secret']
      #specify client.user's info as @user
      @user = client.user(include_entities: true)
      #call client's home_timeline
      @home = client.home_timeline
    else
      redirect_to failure_path
    end
  end

  def error
    flash[:error] = 'Sign in with Twitter failed'
    redirect_to root_path
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
