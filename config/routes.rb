Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  root to: 'pages#home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  resources :announces, only: [:index, :show]


  namespace :account do
    resources :announces
  end

  # resources :wicked, only: [:create, :show, :update]
  # resources :searches
end
