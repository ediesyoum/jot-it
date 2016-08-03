Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  resources :users

  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#sign_in!'
  get '/sign_up', to: 'users#sign_up'
  post '/sign_up', to: 'users#sign_up!'
  get '/sign_out', to: 'users#sign_out'

  resources :notes

  get '/notes', to: 'notes#index'

  get "notes/new", to: "notes#new"

  post "notes", to: "notes#create"

  get '/about', to: 'static#about'

  get '/contact', to: 'static#contact'

end
