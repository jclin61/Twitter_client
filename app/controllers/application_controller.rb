class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = session['access_token']
      config.access_token_secret = session['access_token_secret']
    end
  end



  # CONSUMER KEY reference for checking.
  #     config.consumer_key        = "Tkcz4gex3W9FP70jSI5tzg"
  #     config.consumer_secret     = "EZoeYxCrUVPl4RrRBMoVOQqq2fEmgMoV3sTnEss9g"
  #     config.access_token        = "1692654691-kQq5EpTPRB8icJjUuPjppmWq7rd0kYT3EXu1tFA"
  #     config.access_token_secret = "34MXVUrM7lqn5Gracb9dCz1oMI3tWdrHojO2HWNZ4gxge"

end
