Rails.application.routes.draw do
  root "application#index"

  # Routes for authentication
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
  end

  # Route for the cat facts
  resources :cat_facts, only: [:index]

  # Routes for Not Found page
  get '*path', to: 'application#not_found', via: :all

end
