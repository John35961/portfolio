Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'

  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'pages#dashboard'

  resources :projects
end
