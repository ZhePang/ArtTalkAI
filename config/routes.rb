Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  # root :to => redirect('/movies')


  resources :arts
  root :to => redirect('/arts')
end
