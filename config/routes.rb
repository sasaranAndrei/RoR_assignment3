Rails.application.routes.draw do
  root 'pages#index'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/index'
  resources :products
end