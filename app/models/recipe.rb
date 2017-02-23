class Recipe < ApplicationRecord
	has_many :recipe_ingredients
	has_many :ingredients, :through => :recipe_ingredients

	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	end
end
