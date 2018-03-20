Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  #get '/posts' => 'posts#index'
  #get '/posts/:id' => 'posts#show'
  #get '/posts/:id' => 'posts#edit'
  #patch/put '/posts/:id' => 'posts#update'
  #get '/posts/new' => 'posts#new'
  #post '/posts' => 'posts/create'
  #delete '/posts/:id' => 'posts#destroy'

  get 'index' => 'posts#index'

  get 'comments' => 'posts#comments'

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
