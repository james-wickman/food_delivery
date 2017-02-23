class AddColumnRecipe < ActiveRecord::Migration[5.0]
  def change
  	add_column :recipes, :ingredient_array, :string
  end
end
