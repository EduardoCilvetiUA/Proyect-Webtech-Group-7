Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get '/tickets/search', to: 'tickets#search', as: 'ticket_search'
  resources :reports
  resources :tickets
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
