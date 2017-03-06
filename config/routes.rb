Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  root to: 'categories#index'

  # get '/', to: 'categories#index'

  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create'
  get '/posts/:id', to: 'posts#show', as: 'post'

  get '/posts/:id/edit', to: 'posts#edit'
  put '/posts/:id', to: 'posts#edit'
  delete '/posts/:id', to: 'posts#destroy'

  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show', as: 'category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
