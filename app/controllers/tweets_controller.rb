class TweetsController < ApplicationController
  def index
  	@user = client.user(include_entities: true)
  end
end
