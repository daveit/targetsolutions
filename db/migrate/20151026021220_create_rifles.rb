class CreateRifles < ActiveRecord::Migration
  def change
    create_table :rifles do |t|
      t.string :name
      t.string :model
      t.string :bore
      t.text :details
      t.boolean :active
      t.references :make, index: true, foreign_key: true
      t.references :due, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
