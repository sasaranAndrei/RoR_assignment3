require 'rails_helper'

RSpec.describe 'Add to cart', type: :request do

  describe 'POST products#add_to_cart' do
    let!(:product) { Product.create(title: 'title', description: 'Desserts', price: 5) }

    subject do
      product.update_attribute(:id, 999)
      post add_to_cart_product_path(product.id)
    end

    context 'unauthorized user' do
      it 'asks user for login' do
        subject

        expect(response).to redirect_to(login_path)
      end
    end
  end
end
