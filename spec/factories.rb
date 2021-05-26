FactoryBot.define do
  
  factory :user do
    name 'Test Name'
    email 'test@email.com'
    password '123456'
    password_confirmation '123456'
  end

  factory :product do
    title 'Test Title'
    description 'Desserts'
    price 5

    after(:build) do |product|
      product.picture.attach(io: File.open('public/images/factory_product_image.png'), filename: 'factory_product_image.png', content_type: 'image/png')
    end
  end
end
