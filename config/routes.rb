Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :companies, only: [:index, :show] do
    resources :applications, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :applications, only: [:index]
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
