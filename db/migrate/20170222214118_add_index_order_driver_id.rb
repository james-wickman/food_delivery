class AddIndexOrderDriverId < ActiveRecord::Migration[5.0]
  def change
  	add_index :orders, :driver_id
  end
end
