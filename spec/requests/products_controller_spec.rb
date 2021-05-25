require 'rails_helper'

RSpec.describe ProductsController, type: :request do

  describe 'POST products#add_to_cart' do
    before(:all) do
      product = create(:product)
      # product.update_attribute(:id, 998)

      post add_to_cart_product_path(product.id)
    end

    context 'unauthorized user' do
      it 'asks user for login' do
        expect(response).to redirect_to(login_path)
      end
    end
  end

end
