Rails.application.routes.draw do


  devise_for :users
  resources :users
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/rules', to: 'static_pages#rules'

end
