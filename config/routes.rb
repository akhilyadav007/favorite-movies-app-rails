Rails.application.routes.draw do
  get 'usersessions/new'
  get 'usersessions/create'
  get 'usersessions/destroy'
  get 'favorites/update'
  get 'users/list'
  get 'movies/userlist'
  get 'movies/userlist/:user_id', to: 'movies#userfav'
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources 'movies'
  resources 'users'
  root 'usersessions#new'
  get 'admin', to: 'movies#index'
  resources 'favorites'
  # get 'logout', to: 'usersessions#destroy', as: 'logout'
  resources 'usersessions'
end
