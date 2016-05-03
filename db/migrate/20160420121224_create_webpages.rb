class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :name
      t.text :pagemd
      t.boolean :sidebar
      t.text :sidebarmd

      t.timestamps null: false
    end
  end
end
