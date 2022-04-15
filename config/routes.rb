Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index]
  root "static_pages#landing_pages"
  get "privacy-policy", to: "static_pages#privacy_policy"
end
