Rails.application.routes.draw do
  devise_for :users
  root "pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  resource :users
  resources :posts do
    resources :comments, only: [ :create, :edit, :update, :destroy ]
end

get "/profile/:username", to: "profiles#show", as: "profile"
get "/profile/:username/edit", to: "profiles#edit", as: "edit_profile"
patch "/profile/:username", to: "profiles#update"
get "tags/:name", to: "tags#show"
end
