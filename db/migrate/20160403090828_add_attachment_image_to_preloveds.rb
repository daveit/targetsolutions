class AddAttachmentImageToPreloveds < ActiveRecord::Migration
  def self.up
    change_table :preloveds do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :preloveds, :image
  end
end
