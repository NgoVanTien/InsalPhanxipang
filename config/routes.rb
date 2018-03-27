Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories/index'

  root 'categories#index'

  resources :categories
end
