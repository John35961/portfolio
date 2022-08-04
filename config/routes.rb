Rails.application.routes.draw do
  devise_for :admins

  root to: 'pages#home'

  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'admin#dashboard'

  authenticate :admin do
    mount ActiveAnalytics::Engine, at: 'analytics'
  end

  resources :projects
end
