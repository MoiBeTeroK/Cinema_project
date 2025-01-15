Rails.application.routes.draw do
  resources :movies
  resources :sessions
  resources :reviews
  root "home#index"
end
