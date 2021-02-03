Rails.application.routes.draw do
  get 'home', to: 'static_pages#home'
  get 'static_pages/help'
  root to: 'static_pages#home'
end
