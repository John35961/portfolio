Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :admins, skip: :registrations

  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'admin#dashboard'

  authenticate :admin do
    mount ActiveAnalytics::Engine, at: 'analytics'
  end

  resources :projects

  resources :contacts, only: %i[new create]
end
