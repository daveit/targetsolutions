class AddAttachmentImageToTriggers < ActiveRecord::Migration
  def self.up
    change_table :triggers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :triggers, :image
  end
end
