Rails.application.routes.draw do
  root 'chat-space#index'
  get 'chat-space' =>'chat-space#index'
end
