Rottenpotatoes::Application.routes.draw do
  resources :chats
  resources :arts
  root :to => redirect('/arts')
  get 'start_chat_from_art', to: 'chats#start_chat_from_art'
end
