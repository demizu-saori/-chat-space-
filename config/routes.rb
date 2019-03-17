Rails.application.routes.draw do
  devise_for :users
  root 'message#index'
  get 'chat-space' => "message#index"
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:create, :new, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
