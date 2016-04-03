class AddAttachmentImageToReloadings < ActiveRecord::Migration
  def self.up
    change_table :reloadings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :reloadings, :image
  end
end
