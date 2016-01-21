Rails.application.routes.draw do
  root 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/:provider/callback', to: 'sessions#create'
  
  get 'history' , to: 'pages#history'
  get 'about', to: 'pages#about'
  get 'contact', to: 'letters#new'
  get 'index' , to: 'pages#index'
  get 'en' , to: 'pages#en'
  get 'cn' , to: 'pages#cn'
  resources :posts
  resources :letters
  resources :products

  namespace :admin do
    root 'posts#index'
    get 'contact', to: 'pages#contact'
    get 'login', to: 'pages#login'
    resources :letters
    resources :about_images
    resources :posts
    resources :services
    resources :pages
    resources :sites
    resources :products
  end
end
