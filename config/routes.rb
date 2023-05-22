Rails.application.routes.draw do
  root 'pages#home'
  resources :reports
  resources :tickets
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
