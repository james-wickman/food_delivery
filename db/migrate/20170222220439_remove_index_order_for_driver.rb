class RemoveIndexOrderForDriver < ActiveRecord::Migration[5.0]
  def change
  	remove_index :orders, :driver_id
  end
end
