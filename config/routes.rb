Rails.application.routes.draw do



  ActiveAdmin.routes(self)

  root to: 'pages#home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # resources :searches

  resources :announces, only: [:index, :show] do
    resources :hearts
  end


  match 'heart', to: 'hearts#heart', via: :post

  match 'unheart', to: 'hearts#unheart', via: :delete


  namespace :account do
    resources :announces
  end

  # resources :wicked, only: [:create, :show, :update]
  # resources :searches
end
