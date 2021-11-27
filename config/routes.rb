Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :profiles, only: [:show, :new, :edit, :create, :update]
  root 'welcome#index'

  # ログインユーザー機能実装のため記述
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

end
