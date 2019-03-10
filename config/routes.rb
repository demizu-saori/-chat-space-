Rails.application.routes.draw do
  root 'message#index'
  get 'chat-space' => "message#index"
end
