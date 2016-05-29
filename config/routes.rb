Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create] do
    resources :comments, only: [:create]
  end

  root to: 'posts#index'
end
