require 'factory_helpers'

FactoryBot.define do
  
  factory :user do
    name { FactoryHelpers.random_string }
    email "#{ FactoryHelpers.random_string }@gmail.com"
    password '123456'
    password_confirmation '123456'
  end

  factory :product do
    id 1000
    title { FactoryHelpers.random_string }
    description 'Desserts'
    price 5

    after(:build) do |product|
      product.picture.attach(io: File.open('public/images/factory_product_image.png'), filename: 'factory_product_image.png', content_type: 'image/png')
    end
  end
end
