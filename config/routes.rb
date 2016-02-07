Rails.application.routes.draw do
  devise_for :users
  resources :rooms

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  root "rooms#index"
end
