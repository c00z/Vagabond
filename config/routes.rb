Rails.application.routes.draw do
  root 'locations#index'

  # get '/libraries' => 'libraries#index'
  # get '/locations/new' => 'locations#new', as: 'new_location'
  get '/locations/:id' => 'locations#show'


  get '/users' => 'users#index', as: 'users'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/posts/new' => 'posts#new', as: 'new_post'
  get '/posts' => 'posts#index', as: 'posts'
  post '/posts' => 'posts#create'
  get '/posts/:id' => 'posts#show', as: 'post'

end
