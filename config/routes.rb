Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :movies, only: [:show, :index], param: :api_id do
    # post "/movies/:movie_api_id/save_items", to: "save_items#create", as: :movies_movie_api_id_save_items
    resources :save_items, only: [:create]
  end

  resources :save_items, only: [:update]

  get "/my_movies", to: "save_items#index"

  resources :notifications, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # routes for pop-up ajax request
  post "movies/:movie_id/add_watchlist", to: "movies#add_watchlist"
  post "movies/:movie_id/add_history", to: "movies#add_history"
  post "movies/:movie_id/cinema_notifications", to: "movies#cinema_notifications"

  # routes for chat
  resources :friendships, only: :show do
    resources :messages, only: :create
  end
end
