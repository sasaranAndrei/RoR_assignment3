require 'rails_helper'

RSpec.describe 'Access site', type: :request do
  
  describe 'GET /login' do
    let!(:user) { User.create(name: 'Name', email: 'email@domain.com', password: '123456', password_confirmation: '123456') }
    
    subject do
      post login_path, params: { session: { email: user.email, password: user.password } }
    end

    context 'unactivated user' do
      it 'warns user that is not activated' do
        subject
        
        expected_message = 'Account not activated. Please check your email for the activation link'
        expect(flash[:warning]).to include(expected_message)
      end
    end
  end
end
