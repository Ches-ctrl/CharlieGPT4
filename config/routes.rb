require 'sidekiq/web'

Rails.application.routes.draw do
  # get 'messages/create'
  # get 'chats/index'
  # get 'chats/show'
  # get 'chats/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "about" => "pages#about", as: :about

  # Defines the root path route ("/")
  # root "posts#index"
  resources :chats, only: %i[index show create] do
    resources :messages, only: %i[create]
  end

  mount Sidekiq::Web => '/sidekiq'
end
