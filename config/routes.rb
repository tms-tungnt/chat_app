Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions:      "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  get 'user/{:id}' ,to: 'users#show', as: 'user'
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
