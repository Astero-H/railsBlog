Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :user
  get  'posts' => 'posts#index'
  post 'posts' => 'posts#create'
end
