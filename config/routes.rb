Rails.application.routes.draw do
  get 'static/main'

  devise_for :users, controllers: { registrations: "registrations"}

  resources :posts
  resources :static
  resources :contacts, only: [:new, :create]

  root "static#main"
end
