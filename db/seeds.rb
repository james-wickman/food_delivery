# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing0.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing1.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing2.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing3.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing4.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing5.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing6.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing7.id)
RecipeIngredients.create(recipe_id: @recipe.id, ingredient_id: @ing8.id)