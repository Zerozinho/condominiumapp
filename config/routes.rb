require 'sidekiq/web'

Rails.application.routes.draw do
    get 'inicio' => 'avisos#suatela'
    resources :avisos do
        member do
            post:criar_aviso
        end
    end
    resources :pesquisa_avisos
    resources :encomendas
    resources :conversations do
    resources :messages
  end

  devise_for :users
  root to: 'conversations#index'
end
