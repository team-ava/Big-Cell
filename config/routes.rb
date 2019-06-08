Rails.application.routes.draw do
  resources :pedidos
  resources :vendas
  resources :clientes
  resources :produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
