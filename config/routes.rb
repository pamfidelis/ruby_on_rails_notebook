Rails.application.routes.draw do
  get 'home/index' # para especificar |||  get '/bemvido' => 'home#index'

  resources :contacts #, except/only: [:edit] - caso seja necessário excluir ou especificar uma rota
  resources :kinds # cria 8 rotas automáticas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Para acessar todos os verbos HTTP disponível
  # http://localhost:3000/rails/info/routes

  root 'home#index'
end
