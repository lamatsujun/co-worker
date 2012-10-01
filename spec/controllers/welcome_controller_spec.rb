require 'spec_helper'

describe WelcomeController do

  describe '#index' do
    before do
      get :index
    end

    it { response.should be_success }
  end

  describe '#update' do
    before do
      session[:access_token] = 'hoge'
      mock_koala = mock(Koala::Facebook::API)
      Koala::Facebook::API.should_receive(:new).with(session[:access_token]).and_return(mock_koala)
      mock_koala.should_receive(:put_wall_post).and_return(:status => 200)
      put :update 
    end

    it { response.should be_redirect }
  end
end
