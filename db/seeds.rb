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

@ing0 = Ingredient.create(name: "dark sesame oil", price: 3.48, walmart_id: '011152068589')
@ing1 = Ingredient.create(name: "garlic cloves", price: 1.5, walmart_id: '876941005530')
@ing2 = Ingredient.create(name: "chicken breasts", price: 2.78, walmart_id: '023700030405')
@ing3 = Ingredient.create(name: "broccoli", price: 16.57, walmart_id: '078716111587')
@ing4 = Ingredient.create(name: "mushrooms", price: 0.98, walmart_id: '078742371931')
@ing5 = Ingredient.create(name: "carrots", price: 1.02, walmart_id: '024000014881')
@ing6 = Ingredient.create(name: "green beans", price: 2.98, walmart_id: '037100544493')
@ing7 = Ingredient.create(name: "bok choy", price: 13.99, walmart_id: '797734476736')
@ing8 = Ingredient.create(name: "teriyaki sauce", price: 2.28, walmart_id: '041390010309')

RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing0.id, measurement: '2 tablespoons dark sesame oil, divided')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing1.id, measurement: '2 garlic cloves, finely minced')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing2.id, measurement: '2 pounds chicken breasts, skinless and boneless')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing3.id, measurement: '1 head broccoli, stems removed')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing4.id, measurement: '1 dozen mushrooms, sliced')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing5.id, measurement: '3 carrots, peeled and julienned')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing6.id, measurement: '1/4 pound green beans, diced')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing7.id, measurement: '1 head bok choy, chopped')
RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: @ing8.id, measurement: '2 to 3 tablespoons teriyaki sauce')



