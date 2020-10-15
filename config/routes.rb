Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'errors#index'
  resources :users, only: [:show]
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
