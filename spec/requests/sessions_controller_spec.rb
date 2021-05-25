require 'rails_helper'
require 'factories'

RSpec.describe SessionsController, type: :request do

  describe 'POST sessions#create' do
    before(:all) do
      user = create(:user)
      
      post login_path, params: { session: { email: user.email, password: user.password } }
    end
  
    context 'unactivated user' do
      it 'warns user that is not activated' do
        expected_message = 'Account not activated. Please check your email for the activation link'
        expect(flash[:warning]).to include(expected_message)
      end
    end
  end
end
