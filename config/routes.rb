Rails.application.routes.draw do
  
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      get :about
    end
  end
  get 'searches', to: 'searches#index'
  get 'searches/search', to: 'searches#search'
  

end
