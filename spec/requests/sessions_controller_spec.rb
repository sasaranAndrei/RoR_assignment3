require 'rails_helper'
require 'factories'

RSpec.describe SessionsController, type: :request do

  describe 'POST sessions#create' do
    let(:user) { create(:user) }
    
    context 'unactivated user' do
      before do
        post login_path, params: { session: { email: user.email, password: user.password } }
      end
      
      it 'warns user that is not activated' do
        expected_message = 'Account not activated. Please check your email for the activation link'
        expect(flash[:warning]).to include(expected_message)
      end
    end

    context 'activated user' do
      before do
        user.toggle!(:activated)

        post login_path, params: { session: { email: user.email, password: user.password } }  
      end

      it 'successfully logs in' do
        expect(response).to redirect_to(user)
      end
    end
  end
end
