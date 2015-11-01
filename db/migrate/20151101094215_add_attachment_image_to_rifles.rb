class AddAttachmentImageToRifles < ActiveRecord::Migration
  def self.up
    change_table :rifles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rifles, :image
  end
end
