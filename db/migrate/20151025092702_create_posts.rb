class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :details
      t.string :author
      t.date :published

      t.timestamps null: false
    end
  end
end
