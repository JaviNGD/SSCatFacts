Rails.application.routes.draw do
  root "application#index"

  # Routes for authentication
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create], path: '/register', path_names: { new: '/' }
    resources :sessions, only: [:new, :create, :destroy], path: '/login', path_names: { new: '/' }
  end

  # Route for the cat facts
  resources :cat_facts, only: [:index]

  # Routes for the favorites
  resources :favorites, only: [:index, :create]

  # Routes for Not Found page
  get '*path', to: 'application#not_found', via: :all

end
