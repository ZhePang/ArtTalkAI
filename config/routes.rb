Rottenpotatoes::Application.routes.draw do
  resources :arts
  root :to => redirect('/arts')
end
