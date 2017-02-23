class AddAttachmentDriverAvatarToDrivers < ActiveRecord::Migration
  def self.up
    change_table :drivers do |t|
      t.attachment :driver_avatar
    end
  end

  def self.down
    remove_attachment :drivers, :driver_avatar
  end
end
