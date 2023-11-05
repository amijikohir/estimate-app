Rails.application.routes.draw do
  devise_for :users
  root to: "titles#index"
  resources :users, only: [:edit, :update]
end
