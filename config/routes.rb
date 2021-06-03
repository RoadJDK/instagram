Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users, controllers: { registration: 'registrations'}

  resources :users, only: [:index, :show]

  resources :posts, only: [:index, :show, :create, :destroy] do
    resources :photos, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
