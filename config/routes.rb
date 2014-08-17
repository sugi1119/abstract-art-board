Rails.application.routes.draw do
  devise_for :authors

  resources :dashboard, :book

  resources :home
  root to: 'home#index'
end
