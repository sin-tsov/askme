Rails.application.routes.draw do
 
  root 'users#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:destroy]
  resources :questions

  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'

  # get 'show' => 'users#show'
end
