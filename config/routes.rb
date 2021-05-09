Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get '/dashboard', to: 'products#index'
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pages/index'
  resources :products
end
