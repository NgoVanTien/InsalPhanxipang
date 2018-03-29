Rails.application.routes.draw do
  namespace :admin do
    get 'bills/index'
    resources :bills
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end   
end
