class Ingredient < ApplicationRecord
	has_many :order_ingredients
	has_many :orders, :through => :order_ingredients
	has_many :recipe_ingredients
	has_many :recipes, :through => :recipe_ingredients 	

	before_commit :set_client
 	def set_client
		@client = WalmartOpen::Client.new do |config|
			 ## Product API
			 config.product_api_key = "ukb53p4n4yuh5g8dt7eaasaw"
			 # Set this to true for development mode.
			 config.debug = true
		end 		
 	end

	def update_prices(order)
		set_client
	  	order.ingredients.each do |ingredient|
	  		@client.search(ingredient.walmart_id, {categoryId: 976759})
	  	end
	end
end
