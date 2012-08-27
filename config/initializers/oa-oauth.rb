require "omniauth-facebook"
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_APP_SECRET"],
           :scope => 'email, status_update, publish_stream', :display => 'popup'
end
