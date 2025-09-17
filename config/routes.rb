Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create]
  end
 
  
  resources :perfumes do
   collection do
    get 'explain'  # /perfumes/explain にアクセスできる
   end
  end
  get 'hello/index' => 'hello#index'
  root 'hello#index'

end
