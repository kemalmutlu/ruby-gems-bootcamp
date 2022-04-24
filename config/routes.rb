Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  resources :courses
  resources :users, only: [:index, :edit, :show, :update]
  root "static_pages#landing_pages"
  get 'static_pages/activity'
  get "privacy-policy", to: "static_pages#privacy_policy"
end
