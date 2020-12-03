Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :new, :show, :create] do
    resources :bookings, only: [:create, :new] # because we need the plant id to create 
  end
  resources :bookings, only: [:index, :show, :update] # there we dont need the plant id so we dont nest it
end
