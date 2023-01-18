Rails.application.routes.draw do
  # get 'reservations/new'
  # get 'reservations/create'
  # get 'reservations/show'
  # the above were created automatically with Devise
  devise_for :users
  # Defines the root path route ("/")
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :reservations, only: [:new, :create] # added here nested reservations routes
  end
  resources :reservations, only: [:show] # the show of the resa can be denested as resa is already created if I can see
  # it meaning it already have its proper id
  # get '/profile', to 'pages#profile'
end
