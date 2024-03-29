Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [:create]
  end

  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
