# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Set up the seeds to add to a db later to pull recipe through the recipe#show view
@recipe = Recipe.create(title: "Chicken Stir Fry", total_time: 30, instructions: %Q(
		Heat 1 tablespoon oil in a saute pan over medium heat. Add garlic and stir.
		Place the chicken in the pan and brown 4 minutes on each side. Remove from pan, 
		slice into strips, set aside. Heat remaining tablespoon of oil in a wok over high heat. 
		Add the vegetables and teriyaki sauce. Stir-fry quickly until the vegetables begin to soften. 
		Add the chicken strips, combine well and continue to cook for 2 to 3 minutes. Serve immediately.))

@ing0 = Ingredient.create(name: "dark sesame oil", price: 0)
@ing1 = Ingredient.create(name: "garlic cloves", price: 0)
@ing2 = Ingredient.create(name: "chicken breasts", price: 0)
@ing3 = Ingredient.create(name: "broccoli", price: 0)
@ing4 = Ingredient.create(name: "mushrooms", price: 0)
@ing5 = Ingredient.create(name: "carrots", price: 0)
@ing6 = Ingredient.create(name: "green beans", price: 0)
@ing7 = Ingredient.create(name: "bok choy", price: 0)
@ing8 = Ingredient.create(name: "teriyaki sauce", price: 0)

RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing0.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing1.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing2.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing3.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing4.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing5.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing6.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing7.id)
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing8.id)

@recipe = Recipe.create(title: "Pork Chops Pizzaiola", total_time: 30, instructions: %Q(Season chops with salt and pepper. 
		Heat the extra-virgin olive oil in large skillet over medium-high heat. Add the crushed garlic and
		stir it around to flavor the oil. Add in the chops and caramelize on both sides, 2 to 3 minutes per 
		side. Remove the chops to a plate and reserve. Stir in the fennel seed, onions, red pepper flakes, 
		and oregano. Reduce the heat and cook for 7 to 8 minutes. Add the tomato paste, and cook for 1 minute, 
		then add the wine, and cook for another minute. Stir in the stock and combine well. Slide the chops 
		back into the pan, cover and simmer to finish cooking the chops, about 5 to 6 minutes. Arrange the 
		chops and sauce on a serving platter and serve.)




