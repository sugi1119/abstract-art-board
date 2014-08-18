Rails.application.routes.draw do
  devise_for :authors

  resources :dashboard, :books, :pages

  resources :home
  root to: 'home#index'



end
