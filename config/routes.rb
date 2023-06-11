Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  devise_for :executives
  devise_for :administrators
  devise_for :supervisor_managements

  root 'pages#home'
  get '/tickets/search', to: 'tickets#search', as: 'ticket_search'
  resources :reports
  resources :tickets
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
