class AddAttachmentImageToArcheries < ActiveRecord::Migration
  def self.up
    change_table :archeries do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :archeries, :image
  end
end
