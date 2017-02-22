class ChangeColumnNameIngredient < ActiveRecord::Migration[5.0]
  def change
  	change_column :ingredients, :walmart_id, :string
  end
end
