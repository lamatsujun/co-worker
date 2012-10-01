class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_access_token, :init_flash

  private

  def set_access_token
    if session[:access_token]
      @access_token = session[:access_token]
    end
  end

  def init_flash
    flash[:error] ||= []
  end

end
