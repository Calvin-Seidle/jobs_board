Rails.application.routes.draw do
  resources :user_jobs
  resources :requirements
  resources :results
  resources :jobs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'

  root to: 'home#index'

  get 'users/index'

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
