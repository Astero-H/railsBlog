Rails.application.routes.draw do
  devise_for :user
  root to: 'posts#index'

  resources :posts, to: 'users'
  resources :users
  #get  'posts' => 'posts#index'
  #post 'posts' => 'posts#create'
end
