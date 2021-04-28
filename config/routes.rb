Rails.application.routes.draw do
  root 'pages#index'
  get 'product/new'
  get 'product/show'
  get 'product/edit'
  get 'product/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/index'
  resources :products
end
