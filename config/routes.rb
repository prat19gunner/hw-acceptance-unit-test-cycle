Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/:id/find_movie_by_director' => 'movies#find_movie_by_director', as: :find_movie_by_director
end