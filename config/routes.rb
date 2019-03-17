Rails.application.routes.draw do
  devise_for :users
  root 'message#index'
  get 'chat-space' => "message#index"
  resources :users, only: [:edit,:update]
end
