Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :admins, skip: :registrations

  as :admin do
    get '/login', to: 'devise/sessions#new'
    delete '/logout', to: 'devise/sessions#destroy'
  end

  get '/contact', to: 'pages#contact'
  get '/legal', to: 'pages#legal'
  get '/dashboard', to: 'admin#dashboard'
  get '/sitemap.xml', to: redirect("https://#{ENV['S3_BUCKET_NAME']}.s3.#{ENV['S3_REGION']}.amazonaws.com/sitemap.xml")

  authenticate :admin do
    mount ActiveAnalytics::Engine, at: 'analytics'
  end

  resources :projects

  resources :contacts, only: %i[new create]
end
