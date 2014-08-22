Rails.application.routes.draw do
  devise_for :authors

  resources :dashboard, :artboards

  resources :home
  root to: 'home#index'

end
