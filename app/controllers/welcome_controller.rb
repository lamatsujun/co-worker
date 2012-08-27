class WelcomeController < ApplicationController
  def index
  end

  def update
    @graph = Koala::Facebook::API.new(@access_token)
    @graph.put_wall_post t('tooth')
    redirect_to root_path
    return
  end
end
