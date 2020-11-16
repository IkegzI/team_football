Rails.application.routes.draw do

  resources :team, only: [:new, :index, :show, :create]
  resources :type_action, only: [:new, :index, :show, :create]
  resources :country, only: [:new, :index, :create]
  resources :region, only: [:new, :index, :create]
  resources :position, only: [:new, :index, :create]

  root 'info#index'

  resources :game, only: [:new, :index, :show, :create]

  resources :player, only: [:new, :index, :show, :create]

  resources :journal_player, only: [:new, :create]

  get '/example/last_tem_games'
  get '/example/complete_indicator'
  post '/example/complete_indicator' => 'example#complete_query'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
