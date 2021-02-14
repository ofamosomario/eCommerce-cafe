Rails.application.routes.draw do

  # SITE

  get 'about',                  to: 'sites#about'
  get 'products/show-case',     to: 'sites#show_case'
  get 'records',                to: 'sites#records'

  post 'products/create-order', to: 'products#create_order'

  # ONLY ADMIN

  resources :payment_methods

  resources :products
  devise_for :users

  # ROOT

  root to: "sites#index"

end
