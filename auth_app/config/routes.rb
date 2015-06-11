Rails.application.routes.draw do

 get 'users/new'

 root to: "welcome#index"

 get "/login", to: "sessions#new"

 post "/sessions", to: "sessions#create"

 get "/sign_up", to: "users#new", as: "sign_up"

 #The delete route
 delete "/users/:id", to: "users#destroy"

 resources :users

end