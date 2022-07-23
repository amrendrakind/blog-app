Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  # resources :logins
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:new, :create]
    end
  end
  resources :login, only: [:index, :show] do

  end
  # get '/login', to: 'login#index'
  # get "/users", to: "users#index" 
  # get "/users/:user_id", to: "users#show" 
  # get "/users/:user_id/posts", to: "posts#index" 
  # get "/users/:user_id/posts/:id", to: "posts#show"
  # post "/users/:user_id/posts/new", to: "posts#new"
  
end
