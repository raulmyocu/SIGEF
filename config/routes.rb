Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/bienvenida', to: 'home#index'
  #get '/users/:id', to: 'user#index'
  resources :users

  root to: 'home#index'
end
