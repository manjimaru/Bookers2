Rails.application.routes.draw do
root "homes#top"
get 'users/show'
devise_for :users
  root to: "home#top"

  get "/home/about" => "homes#about"
  resources :books, only: [:create,:edit,:update,:index,:show,:destroy]
  resources :users, only: [:show,:edit,:update,:index]
end