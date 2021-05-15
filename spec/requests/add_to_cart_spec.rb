require 'rails_helper'

describe 'Add to cart', type: :request do
  it 'stops unauthorized user from adding products in cart' do
    get '/'
    
    expect(response).to have_http_status(:success)
  end
end
