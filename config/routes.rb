Rails.application.routes.draw do
  get 'home/index'
  resources :pilotos
  resources :provas
  resources :tracados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
