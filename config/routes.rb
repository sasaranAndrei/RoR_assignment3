Rails.application.routes.draw do
  root 'pages#index'
  get     '/signup',  to: 'users#new'  
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  get '/cart', to: 'products#cart',  as: 'cart'
  resources :products do
    post :add_to_cart, on: :member
    delete :remove_from_cart, on: :member
  end

  get '/products_dashboard',  to: 'products#index', as: 'products_dashboard'
  get '/orders_dashboard',    to: 'orders#index', as: 'orders_dashboard'
  
  resources :users
  resources :products
  resources :orders
  resources :account_activations, only: :edit
  resources :password_resets,     only: %i[new create edit update]
end
