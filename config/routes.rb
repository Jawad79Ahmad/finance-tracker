Rails.application.routes.draw do
  resources :user_stocks, only: [ :create, :destroy ]
  get 'my_protfolio', to: 'users#my_protfolio'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'search_stock', to: 'stocks#search'
end
