Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"

  # delete "events/:id", to: "events#destroy"

end
