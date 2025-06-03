Rails.application.routes.draw do
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
  root 'app/home#index'

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :users, only: [:index, :show]
  end

  namespace :app do
    get 'home', to: 'home#index'
    get 'profile', to: 'profile#show'
  end
end
