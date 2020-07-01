Rails.application.routes.draw do
  devise_for :users

  root "homes#index"

  resources :items, only: [:new, :destroy]

  post "items/new", to: "items#create"

  resources :users, only: :show do
    member do
      get "favorite", to: "users#favorite"
    end
  end

end
