Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users

  get 'users/:id', to: 'users#show', as: :user

  root to: 'pages#home'
  get "/search", to: 'listings#index', as: :lewagon
  resources :listings, only: [:index , :show, :new, :create] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :saved_listings, only: [:create]
  end
end
