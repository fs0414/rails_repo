Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, only: []
  # devise_for :users, path: "users", controllers: {
  #   sessions: "users/sessions"
  # }
  # devise_for :google_users
  resources :owls
  resources :hedgehogs
  resources :chicks
  resources :dogs
  resources :cats

  resources :events, only: %i[ index show new create ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: redirect("/cats")
  devise_for :google_users, controllers: {
    omniauth_callbacks: "google_users/omniauth_callbacks"
  }
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
