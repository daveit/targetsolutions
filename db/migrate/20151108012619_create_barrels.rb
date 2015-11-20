class CreateBarrels < ActiveRecord::Migration
  def change
    create_table :barrels do |t|
      t.string :name
      t.string :model
      t.text :details
      t.text :twist
      t.boolean :active
      t.references :due, index: true, foreign_key: true
      t.references :make, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
