Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources :posts
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end