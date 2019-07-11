Rails.application.routes.draw do
  resources :deliveries
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	 delete 'log_out' => 'sessions#destroy'
  devise_for :users
  resources :products
  resources :order_items
  resource :carts, only: [:show]
  resources :charges
  resources :searches
  
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
