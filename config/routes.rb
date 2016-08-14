Rails.application.routes.draw do
  devise_for :users

  resources :notes

  authenticated :user do
    root to: 'notes#index'
  end

  root to: 'welcome#index'



  get "/notes", to: "notes#index"

  get "notes/new", to: "notes#new"

  post "notes", to: "notes#create"

  get "notes/:id", to: "notes#show"

  get "notes/:id/edit", to: "notes#edit"

  patch "/notes/:id", to: "notes#update"

end
