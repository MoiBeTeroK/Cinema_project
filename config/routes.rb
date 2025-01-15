Rails.application.routes.draw do
  resources :movies
  resources :sessions
  root "home#index"
end
