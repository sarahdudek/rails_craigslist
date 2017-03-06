Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'home/show'

  mount Ckeditor::Engine => '/ckeditor'

  root to: 'categories#index'

  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create'
  get '/posts/:id', to: 'posts#show', as: 'post'

  get '/posts/:id/edit', to: 'posts#edit'
  put '/posts/:id', to: 'posts#edit'
  delete '/posts/:id', to: 'posts#destroy'

  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show', as: 'category'

  get '/users/:id', to: 'users#show', as: 'user'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
end
