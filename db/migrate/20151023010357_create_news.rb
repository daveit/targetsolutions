class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :details
      t.string :author
      t.date :published

      t.timestamps null: false
    end
  end
end
