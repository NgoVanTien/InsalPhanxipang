Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'admin/categories/index'

  root 'admin/categories#index'

  namespace :admin do 
    resources :categories
  end
end
