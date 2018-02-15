Rails.application.routes.draw do
  

  devise_for :user
  resources :comments
  resources :posts

  root 'posts#index'

# User's Posts
  get '/:name' => 'posts#user_posts', as: :user_posts

#get = retrieve info / data
  get 'index' => 'practice#index'
  
  get 'about' => 'practice#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
