Rails.application.routes.draw do
  get 'static/main'

  devise_for :users, controllers: { registrations: "registrations"}

  resources :posts
  resources :static
  root "static#main"
end
