Rails.application.routes.draw do

  resources :authors, only: [:show, :index] do
  resources :posts, only: [:show, :index, :new]
end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  resources :authors, only: [:show, :index] do
  resources :posts, only: [:show, :index, :new, :edit]
end

end
