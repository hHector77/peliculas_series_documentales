Rails.application.routes.draw do
  #get "documentary_films/index"
  #get "documentary_films/new"
  #get "documentary_films/create"
  #get "series/index"
  #get "series/new"
  #get "series/create"
  #get "movies/index"
  #get "movies/new"
  #get "movies/create"
  Rails.application.routes.draw do
    resources :movies, only: [:index, :new, :create]
    resources :series, only: [:index, :new, :create]
    resources :documentary_films, only: [:index, :new, :create]
  
    root "movies#index"
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
