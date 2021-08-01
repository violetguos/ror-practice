Rails.application.routes.draw do
  get 'hangouts/index'
  devise_for :users
  root 'hangouts#index'
  resources :messages, only: [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
