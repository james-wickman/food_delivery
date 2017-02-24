class ChangePriceToDec < ActiveRecord::Migration[5.0]
  def change
  	change_column :ingredients, :price, :decimal
  end
end
