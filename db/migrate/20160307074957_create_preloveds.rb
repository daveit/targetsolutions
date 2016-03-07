class CreatePreloveds < ActiveRecord::Migration
  def change
    create_table :preloveds do |t|
      t.string :name
      t.string :model
      t.decimal :price
      t.text :details
      t.boolean :active
      t.references :make, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
