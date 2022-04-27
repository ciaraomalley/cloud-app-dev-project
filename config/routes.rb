Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :posts
  #get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  # Defines the root path route ("/")
  # root "articles#index"

  #root to: "posts#index"
  get "posts", to: "posts#show"
  get "about", to: "about#about"

  get "contact", to: "contact#contact"


end

Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  #devise_for :users
  resources :posts
  #root to: 'posts#index'
end
