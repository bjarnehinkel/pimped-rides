Rails.application.routes.draw do
  devise_for :users

  get 'users/:id', to: 'users#show', as: :user

  root to: 'pages#home'
  get "/search", to: 'listings#index', as: :lewagon
  resources :listings, only: [:index , :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
