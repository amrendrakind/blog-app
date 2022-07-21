Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  resources :logins
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] do
      resources :comments, only: [:index, :show]
    end
  end
end
