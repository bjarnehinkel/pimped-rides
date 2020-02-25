Rails.application.routes.draw do
  get 'users/:id', to: 'users#show', as: :user
  devise_for :users
  root to: 'pages#home'
  resources :listings, only: [:index , :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
