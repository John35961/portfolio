Rails.application.routes.draw do
  root to: 'pages#home'

  get '/contact', to: 'pages#contact', as: 'contact'

  resources :projects, only: %i[index show]
end
