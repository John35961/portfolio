Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'

  get '/contact', to: 'pages#contact', as: 'contact'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :projects, only: %i[index show]
end
