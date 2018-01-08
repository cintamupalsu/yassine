Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  root 'dashboard#home'
  get  '/help' ,   to: 'dashboard#help'
  get  '/about',   to: 'dashboard#about'
  get  '/contact', to: 'dashboard#contact'
  get  '/signup',  to: 'users#new'
  
  #c8
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  #/c8
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :chapters
end
