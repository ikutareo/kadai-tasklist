Rails.application.routes.draw do
    
  
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :tasks, :users, only: [:index, :show, :new, :create]
end
