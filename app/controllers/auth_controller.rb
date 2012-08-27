class AuthController < ApplicationController
  def login
    return
  end

  def logout
    @access_token =nil
    reset_session
    redirect_to root_path
    return
  end

  def callback
    auth = request.env["omniauth.auth"]
    session[:access_token] = auth['credentials'].token
    redirect_to root_path
    return
  end
end
