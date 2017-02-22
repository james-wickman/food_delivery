class RemoveForeignKeyDrivers < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :orders, :drivers
  end
end
