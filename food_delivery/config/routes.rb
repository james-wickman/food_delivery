Rails.application.routes.draw do

  get 'order_ingredients/index'

  get 'order_ingredients/new'

  get 'order_ingredients/create'

  get 'order_ingredients/show'

  get 'order_ingredients/edit'

  get 'order_ingredients/update'

  get 'order_ingredients/destroy'

  get 'order/index'

  get 'order/new'

  get 'order/create'

  get 'order/show'

  get 'order/edit'

  get 'order/update'

  get 'order/destroy'

  get 'recipe_ingredients/index'

  get 'recipe_ingredients/new'

  get 'recipe_ingredients/create'

  get 'recipe_ingredients/show'

  get 'recipe_ingredients/edit'

  get 'recipe_ingredients/update'

  get 'recipe_ingredients/destroy'

  get 'ingredients/index'

  get 'ingredients/show'

  get 'ingredients/edit'

  get 'ingredients/create'

  get 'ingredients/update'

  get 'ingredients/new'

  get 'ingredients/destroy'

  get 'recipes/index'

  get 'recipes/show'

  get 'recipes/edit'

  get 'recipes/create'

  get 'recipes/update'

  get 'recipes/new'

  get 'recipes/destroy'

  get 'drivers/show'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_for :drivers, controllers: {
    sessions: 'drivers/sessions'
  }
end
