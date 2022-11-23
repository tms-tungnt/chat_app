Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions:      "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks",

  }
  resources :rooms do
    resources :messages
  end
  resources :messages
  resources :users
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
