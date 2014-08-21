Rails.application.routes.draw do
  devise_for :authors

  resources :dashboard

  resources :books do
   resources :pages
  end

  resources :home
  root to: 'home#index'

  get '/pages/:book_id/new' => 'pages#new'


end
