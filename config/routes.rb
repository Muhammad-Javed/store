Rails.application.routes.draw do
  resources :orders
  devise_for :users
  resources :customers
  resources:catagories do
    resources:products
  end
  root "catagories#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
