require 'rails_helper'

RSpec.describe ProductsController, type: :request do

  describe 'POST products#add_to_cart' do
    let(:product) { create(:product) }

    context 'unauthorized user' do
      before do
        post add_to_cart_product_path(product.id)
      end
      
      it 'asks user for login' do
        expect(response).to redirect_to(login_path)
      end
    end

    context 'authorized user' do
      before do            
        user = create(:user)
        user.toggle!(:activated)
        post login_path, params: { session: { email: user.email, password: user.password } }
        
        post add_to_cart_product_path(product.id)
      end

      it 'successfully adds product to cart' do
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
