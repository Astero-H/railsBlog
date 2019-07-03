Rails.application.routes.draw do
  devise_for :user
  get  'posts' => 'posts#index'
  post 'posts' => 'posts#create'
end
