class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :name
      t.string :shortcode
      t.text :body
      t.text :left
      t.text :right
      t.boolean :lefton
      t.boolean :righton

      t.timestamps null: false
    end
  end
end
