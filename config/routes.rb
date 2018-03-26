Rails.application.routes.draw do
  resources :addresses
  get 'home/index' # para especificar |||  get '/bemvido' => 'home#index'

  resources :phones # cria 8 rotas automáticas
  resources :contacts #, except/only: [:edit] - caso seja necessário excluir ou especificar uma rota
  resources :kinds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Para acessar todos os verbos HTTP disponível
  # http://localhost:3000/rails/info/routes

  root 'home#index'
end
