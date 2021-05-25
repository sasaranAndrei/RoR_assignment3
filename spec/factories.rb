require 'factory_helpers'

FactoryBot.define do
  
  factory :user do
    name { FactoryHelpers.random_string }
    email "#{ FactoryHelpers.random_string }@gmail.com"
    password '123456'
    password_confirmation '123456'
  end

  factory :product do
    title { FactoryHelpers.random_string }
    description 'Desserts'
    price 5
  end
end
