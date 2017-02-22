                    Prefix Verb   URI Pattern                            Controller#Action
              sessions_new GET    /sessions/new(.:format)                sessions#new
           sessions_create GET    /sessions/create(.:format)             sessions#create
          sessions_destroy GET    /sessions/destroy(.:format)            sessions#destroy
         order_ingredients GET    /order_ingredients(.:format)           order_ingredients#index
                           POST   /order_ingredients(.:format)           order_ingredients#create
      new_order_ingredient GET    /order_ingredients/new(.:format)       order_ingredients#new
     edit_order_ingredient GET    /order_ingredients/:id/edit(.:format)  order_ingredients#edit
          order_ingredient GET    /order_ingredients/:id(.:format)       order_ingredients#show
                           PATCH  /order_ingredients/:id(.:format)       order_ingredients#update
                           PUT    /order_ingredients/:id(.:format)       order_ingredients#update
                           DELETE /order_ingredients/:id(.:format)       order_ingredients#destroy
               order_index GET    /order(.:format)                       order#index
                           POST   /order(.:format)                       order#create
                 new_order GET    /order/new(.:format)                   order#new
                edit_order GET    /order/:id/edit(.:format)              order#edit
                     order GET    /order/:id(.:format)                   order#show
                           PATCH  /order/:id(.:format)                   order#update
                           PUT    /order/:id(.:format)                   order#update
                           DELETE /order/:id(.:format)                   order#destroy
        recipe_ingredients GET    /recipe_ingredients(.:format)          recipe_ingredients#index
                           POST   /recipe_ingredients(.:format)          recipe_ingredients#create
     new_recipe_ingredient GET    /recipe_ingredients/new(.:format)      recipe_ingredients#new
    edit_recipe_ingredient GET    /recipe_ingredients/:id/edit(.:format) recipe_ingredients#edit
         recipe_ingredient GET    /recipe_ingredients/:id(.:format)      recipe_ingredients#show
                           PATCH  /recipe_ingredients/:id(.:format)      recipe_ingredients#update
                           PUT    /recipe_ingredients/:id(.:format)      recipe_ingredients#update
                           DELETE /recipe_ingredients/:id(.:format)      recipe_ingredients#destroy
               ingredients GET    /ingredients(.:format)                 ingredients#index
                           POST   /ingredients(.:format)                 ingredients#create
            new_ingredient GET    /ingredients/new(.:format)             ingredients#new
           edit_ingredient GET    /ingredients/:id/edit(.:format)        ingredients#edit
                ingredient GET    /ingredients/:id(.:format)             ingredients#show
                           PATCH  /ingredients/:id(.:format)             ingredients#update
                           PUT    /ingredients/:id(.:format)             ingredients#update
                           DELETE /ingredients/:id(.:format)             ingredients#destroy
                   recipes GET    /recipes(.:format)                     recipes#index
                           POST   /recipes(.:format)                     recipes#create
                new_recipe GET    /recipes/new(.:format)                 recipes#new
               edit_recipe GET    /recipes/:id/edit(.:format)            recipes#edit
                    recipe GET    /recipes/:id(.:format)                 recipes#show
                           PATCH  /recipes/:id(.:format)                 recipes#update
                           PUT    /recipes/:id(.:format)                 recipes#update
                           DELETE /recipes/:id(.:format)                 recipes#destroy
              drivers_show GET    /drivers/show(.:format)                drivers#show
                users_show GET    /users/show(.:format)                  users#show
          new_user_session GET    /users/sign_in(.:format)               users/sessions#new
              user_session POST   /users/sign_in(.:format)               users/sessions#create
      destroy_user_session DELETE /users/sign_out(.:format)              users/sessions#destroy
         new_user_password GET    /users/password/new(.:format)          devise/passwords#new
        edit_user_password GET    /users/password/edit(.:format)         devise/passwords#edit
             user_password PATCH  /users/password(.:format)              devise/passwords#update
                           PUT    /users/password(.:format)              devise/passwords#update
                           POST   /users/password(.:format)              devise/passwords#create
  cancel_user_registration GET    /users/cancel(.:format)                devise/registrations#cancel
     new_user_registration GET    /users/sign_up(.:format)               devise/registrations#new
    edit_user_registration GET    /users/edit(.:format)                  devise/registrations#edit
         user_registration PATCH  /users(.:format)                       devise/registrations#update
                           PUT    /users(.:format)                       devise/registrations#update
                           DELETE /users(.:format)                       devise/registrations#destroy
                           POST   /users(.:format)                       devise/registrations#create
        new_driver_session GET    /drivers/sign_in(.:format)             drivers/sessions#new
            driver_session POST   /drivers/sign_in(.:format)             drivers/sessions#create
    destroy_driver_session DELETE /drivers/sign_out(.:format)            drivers/sessions#destroy
       new_driver_password GET    /drivers/password/new(.:format)        devise/passwords#new
      edit_driver_password GET    /drivers/password/edit(.:format)       devise/passwords#edit
           driver_password PATCH  /drivers/password(.:format)            devise/passwords#update
                           PUT    /drivers/password(.:format)            devise/passwords#update
                           POST   /drivers/password(.:format)            devise/passwords#create
cancel_driver_registration GET    /drivers/cancel(.:format)              devise/registrations#cancel
   new_driver_registration GET    /drivers/sign_up(.:format)             devise/registrations#new
  edit_driver_registration GET    /drivers/edit(.:format)                devise/registrations#edit
       driver_registration PATCH  /drivers(.:format)                     devise/registrations#update
                           PUT    /drivers(.:format)                     devise/registrations#update
                           DELETE /drivers(.:format)                     devise/registrations#destroy
                           POST   /drivers(.:format)                     devise/registrations#create
                      root GET    /                                      home#index
