Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  resources :notes

  get "/notes", to: "notes#index"

  get "notes/new", to: "notes#new"

  post "notes", to: "notes#create"

  get "notes/:id", to: "notes#show"

  get "notes/:id/edit", to: "notes#edit"

  patch "/notes/:id", to: "notes#update"

end
