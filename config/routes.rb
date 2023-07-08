Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root to: redirect('/admin/login?saludo=hola')
  get '/admin', to: 'application#index'
  post '/admin', to: 'application#index'
end

