class AddAvailableToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :available, :boolean
  end
end
