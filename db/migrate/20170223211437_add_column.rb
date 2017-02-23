class AddColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :recipe_ingredients, :measurement, :string
  end
end
