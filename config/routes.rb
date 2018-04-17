Rails.application.routes.draw do

  root "static_pages#index"

  namespace :admin do
    root "admins#login"
    resources :admins
    resources :categories
  end

end
