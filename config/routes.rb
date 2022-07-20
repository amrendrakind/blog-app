Rails.application.routes.draw do
  resources :logins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
    # resources :logins, only: [:index, :show]
  end

end
