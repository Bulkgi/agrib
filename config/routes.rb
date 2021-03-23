Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'  
  }
  devise_for :farmer_users, controllers: {
    sessions: 'farmer_users/sessions',
    registrations: 'farmer_users/registrations'
  }


  root to: 'products#index'
  resources :products, only: :index
end
