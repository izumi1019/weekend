Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show] 
  namespace :admin do
    resources :posts, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
end
