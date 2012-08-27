class AuthController < ApplicationController
  def login
    auth = request.env['omniauth.auth']
    return
  end

  def logout
    reset_session
    redirect_to root_path
    return
  end

  def callback
    @access_token = true
    redirect_to root_path
    return
  end
end
