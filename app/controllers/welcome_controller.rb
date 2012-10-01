class WelcomeController < ApplicationController
  def index
  end

  def update
    begin
      @graph = Koala::Facebook::API.new(@access_token)
      @graph.put_wall_post t('tooth')
    rescue
      flash[:error] << "wait"
    end
    redirect_to root_path
    return
  end
end
