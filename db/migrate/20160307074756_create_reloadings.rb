class CreateReloadings < ActiveRecord::Migration
  def change
    create_table :reloadings do |t|
      t.string :name
      t.string :model
      t.integer :quantity
      t.decimal :price
      t.text :details
      t.boolean :active
      t.references :due, index: true, foreign_key: true
      t.references :make, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
