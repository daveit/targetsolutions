class AddAttachmentImageToBarrels < ActiveRecord::Migration
  def self.up
    change_table :barrels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :barrels, :image
  end
end
