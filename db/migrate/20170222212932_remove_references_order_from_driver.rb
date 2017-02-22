class RemoveReferencesOrderFromDriver < ActiveRecord::Migration[5.0]
  def change
  	remove_reference(:orders, :driver, index: true)
  end
end
