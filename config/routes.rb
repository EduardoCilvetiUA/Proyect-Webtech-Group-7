Rails.application.routes.draw do
  devise_for :users
  get 'tickets/sort_by_date', to: 'tickets#sort_by_date', as: 'sort_by_date_tickets'

  root 'pages#home'
  get '/tickets/search', to: 'tickets#search', as: 'ticket_search'
  resources :reports
  resources :tickets do
    resources :comments, only: [:create]
  end
  resources :users
  resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
