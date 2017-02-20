                    Prefix Verb   URI Pattern                           Controller#Action
   order_ingredients_index GET    /order_ingredients/index(.:format)    order_ingredients#index
     order_ingredients_new GET    /order_ingredients/new(.:format)      order_ingredients#new
  order_ingredients_create GET    /order_ingredients/create(.:format)   order_ingredients#create
    order_ingredients_show GET    /order_ingredients/show(.:format)     order_ingredients#show
    order_ingredients_edit GET    /order_ingredients/edit(.:format)     order_ingredients#edit
  order_ingredients_update GET    /order_ingredients/update(.:format)   order_ingredients#update
 order_ingredients_destroy GET    /order_ingredients/destroy(.:format)  order_ingredients#destroy
               order_index GET    /order/index(.:format)                order#index
                 order_new GET    /order/new(.:format)                  order#new
              order_create GET    /order/create(.:format)               order#create
                order_show GET    /order/show(.:format)                 order#show
                order_edit GET    /order/edit(.:format)                 order#edit
              order_update GET    /order/update(.:format)               order#update
             order_destroy GET    /order/destroy(.:format)              order#destroy
  recipe_ingredients_index GET    /recipe_ingredients/index(.:format)   recipe_ingredients#index
    recipe_ingredients_new GET    /recipe_ingredients/new(.:format)     recipe_ingredients#new
 recipe_ingredients_create GET    /recipe_ingredients/create(.:format)  recipe_ingredients#create
   recipe_ingredients_show GET    /recipe_ingredients/show(.:format)    recipe_ingredients#show
   recipe_ingredients_edit GET    /recipe_ingredients/edit(.:format)    recipe_ingredients#edit
 recipe_ingredients_update GET    /recipe_ingredients/update(.:format)  recipe_ingredients#update
recipe_ingredients_destroy GET    /recipe_ingredients/destroy(.:format) recipe_ingredients#destroy
         ingredients_index GET    /ingredients/index(.:format)          ingredients#index
          ingredients_show GET    /ingredients/show(.:format)           ingredients#show
          ingredients_edit GET    /ingredients/edit(.:format)           ingredients#edit
        ingredients_create GET    /ingredients/create(.:format)         ingredients#create
        ingredients_update GET    /ingredients/update(.:format)         ingredients#update
           ingredients_new GET    /ingredients/new(.:format)            ingredients#new
       ingredients_destroy GET    /ingredients/destroy(.:format)        ingredients#destroy
             recipes_index GET    /recipes/index(.:format)              recipes#index
              recipes_show GET    /recipes/show(.:format)               recipes#show
              recipes_edit GET    /recipes/edit(.:format)               recipes#edit
            recipes_create GET    /recipes/create(.:format)             recipes#create
            recipes_update GET    /recipes/update(.:format)             recipes#update
               recipes_new GET    /recipes/new(.:format)                recipes#new
           recipes_destroy GET    /recipes/destroy(.:format)            recipes#destroy
              drivers_show GET    /drivers/show(.:format)               drivers#show
                users_show GET    /users/show(.:format)                 users#show
                      root GET    /                                     home#index
          new_user_session GET    /users/sign_in(.:format)              users/sessions#new
              user_session POST   /users/sign_in(.:format)              users/sessions#create
      destroy_user_session DELETE /users/sign_out(.:format)             users/sessions#destroy
         new_user_password GET    /users/password/new(.:format)         devise/passwords#new
        edit_user_password GET    /users/password/edit(.:format)        devise/passwords#edit
             user_password PATCH  /users/password(.:format)             devise/passwords#update
                           PUT    /users/password(.:format)             devise/passwords#update
                           POST   /users/password(.:format)             devise/passwords#create
  cancel_user_registration GET    /users/cancel(.:format)               devise/registrations#cancel
     new_user_registration GET    /users/sign_up(.:format)              devise/registrations#new
    edit_user_registration GET    /users/edit(.:format)                 devise/registrations#edit
         user_registration PATCH  /users(.:format)                      devise/registrations#update
                           PUT    /users(.:format)                      devise/registrations#update
                           DELETE /users(.:format)                      devise/registrations#destroy
                           POST   /users(.:format)                      devise/registrations#create
        new_driver_session GET    /drivers/sign_in(.:format)            drivers/sessions#new
            driver_session POST   /drivers/sign_in(.:format)            drivers/sessions#create
    destroy_driver_session DELETE /drivers/sign_out(.:format)           drivers/sessions#destroy
       new_driver_password GET    /drivers/password/new(.:format)       devise/passwords#new
      edit_driver_password GET    /drivers/password/edit(.:format)      devise/passwords#edit
           driver_password PATCH  /drivers/password(.:format)           devise/passwords#update
                           PUT    /drivers/password(.:format)           devise/passwords#update
                           POST   /drivers/password(.:format)           devise/passwords#create
cancel_driver_registration GET    /drivers/cancel(.:format)             devise/registrations#cancel
   new_driver_registration GET    /drivers/sign_up(.:format)            devise/registrations#new
  edit_driver_registration GET    /drivers/edit(.:format)               devise/registrations#edit
       driver_registration PATCH  /drivers(.:format)                    devise/registrations#update
                           PUT    /drivers(.:format)                    devise/registrations#update
                           DELETE /drivers(.:format)                    devise/registrations#destroy
                           POST   /drivers(.:format)                    devise/registrations#create
