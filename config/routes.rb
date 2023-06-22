Rails.application.routes.draw do

  devise_for :users
  post "/rails/active_storage/direct_uploads", to: "active_storage/direct_uploads#create", as: "custom_direct_uploads"
  

  get 'tickets/sort_by_date', to: 'tickets#sort_by_date', as: 'sort_by_date_tickets'

  resources :tickets do
    patch 'update_execrandom', on: :member
    post 'upload_attachment', on: :member
  end
  

  
  resources :users do
    member do
      patch :update_role_to_supervisor
    end
  end

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
