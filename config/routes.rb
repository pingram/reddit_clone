RedditClone::Application.routes.draw do
  # get "subs/new"
  # get "subs/edit"
  # get "subs/create"
  # get "subs/update"
  # get "subs/index"
  # get "subs/show"
  # get "subs/destroy"
  root to: 'users#index'
  # get "sessions/new"
  # get "sessions/create"
  # get "sessions/destroy"
  # get "users/new"
  # get "users/create"
  resources :users, only: [:new, :create, :index]
  resource :session, only: [:new, :create, :destroy]
  resources :comments
  resources :subs
  resources :links
end
