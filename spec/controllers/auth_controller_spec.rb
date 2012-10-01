require 'spec_helper'

describe AuthController do

  describe "#login" do
    before do
      get :login
    end

    it { response.should be_success }
  end

  describe "#logout" do
    before do
      get :logout
    end

    it { response.should be_redirect }
  end

  describe "#callback" do
    before do
      auth = {
        'credentials' => {
          :token => 'token'
        }
      }
      request.env["omniauth.auth"] = auth
        
      auth['credentials'].should_receive(:token).and_return(auth['credentials']['token'])
      get :callback, :provider => 'facebook'
    end

    it { response.should be_redirect }
  end
end
