class AddColumnToRecIng < ActiveRecord::Migration[5.0]
  def change
  	add_column :recipe_ingredients, :quantity, :integer
  end
end
