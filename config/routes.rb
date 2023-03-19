Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about'
  post 'books' => 'books#create'
  devise_for :users
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
