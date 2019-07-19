Rails.application.routes.draw do
  devise_for :user
  root to: 'posts#index'
  #get  'posts' => 'posts#index'
  post 'posts' => 'posts#create'
end
