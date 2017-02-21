Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :order_ingredients

  resources :order

  resources :recipe_ingredients

  resources :ingredients

  resources :recipes

  get 'drivers/show'

  get 'users/show'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :drivers, controllers: {
    sessions: 'drivers/sessions'
  }

  root to: "home#index"

end
