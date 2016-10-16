Rails.application.routes.draw do
  get 'interventions/index'

  resources :artisans, only: [:show] do
    resources :intervention, only: [:index]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
