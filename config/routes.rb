Rails.application.routes.draw do
  resources :addresses
  get 'home/index'

  resources :phones
  resources :contacts
  resources :kinds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Para acessar todos os verbos HTTP disponível
  # http://localhost:3000/rails/info/routes

  root 'home#index'
end
