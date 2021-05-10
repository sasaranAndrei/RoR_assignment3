Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'
  get '/cart', to: 'products#cart', as: 'cart'
  get '/dashboard', to: 'products#index'
  root 'pages#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pages/index'
  resources :products
  resources :users
end
