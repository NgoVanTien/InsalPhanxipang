Rails.application.routes.draw do
  root "static_pages#index"
  namespace :admin do
    root "admins#login"
    resources :admins
    resources :categories
    resources :products
    resources :bills
    resources :product_bills
  end
end
