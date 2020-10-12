Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  match '/movies/:id/likeMovieFind(.:format)', to: 'movies#likeMovieFind', as: 'likeMovies', via: :get
end
