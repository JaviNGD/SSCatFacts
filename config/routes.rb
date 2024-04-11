Rails.application.routes.draw do
  root "application#index"

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end

end
