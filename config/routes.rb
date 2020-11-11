Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'errors#index'
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
      get :followings
      get :followers
      get :user_like
    end
  end
  post   '/like/:error_id' => 'likes#like',   as: 'like'
  delete '/like/:error_id' => 'likes#unlike', as: 'unlike'
  resources :biases
  resources :errors do
    resources :comments, only: [:create]
    collection do
      get 'search'
      get 'about'
      get 'category_show'
      get 'industry'
      get 'own_error'
      get 'human_factor'
      get 'in_my_head'
    end
  end
end
