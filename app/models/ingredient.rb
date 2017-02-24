class Ingredient < ApplicationRecord
	has_many :order_ingredients, dependent: :destroy
	has_many :orders, :through => :order_ingredients
	has_many :recipe_ingredients, dependent: :destroy
	has_many :recipes, :through => :recipe_ingredients 	

end
