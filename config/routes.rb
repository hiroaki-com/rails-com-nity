Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :profiles, only: [:show, :new, :edit, :create, :update]
  root 'welcome#index'
end
