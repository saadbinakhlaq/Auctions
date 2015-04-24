Rails.application.routes.draw do
  devise_for :users

  resources :products do
    resources :auction_products, only: [ :create ] do
      resources :bids, only: [ :create ]
    end
  end

  root 'products#index'
end
