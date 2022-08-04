Rails.application.routes.draw do
  devise_for :admins

  root to: 'pages#home'

  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'admin#dashboard'

  mount ActiveAnalytics::Engine, at: 'analytics'

  resources :projects
end
