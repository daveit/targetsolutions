class AddAttachmentImageToOptics < ActiveRecord::Migration
  def self.up
    change_table :optics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :optics, :image
  end
end
