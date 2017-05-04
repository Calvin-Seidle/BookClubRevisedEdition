Rails.application.routes.draw do
  
  # root 'timeline#index'
  get 'users/show'
  get 'timeline/index'

  devise_for :users
  resources :users
  resources :books do 
	resources :reviews
  end  

root 'books#index'
end
