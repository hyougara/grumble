Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users

  resources :users
  resources :posts

  resources :posts do
    resources :likes
  end

  namespace :admin do
    resources :users, only: [:index, :destroy]
  end

  

end
