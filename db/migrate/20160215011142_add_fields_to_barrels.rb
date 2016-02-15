class AddFieldsToBarrels < ActiveRecord::Migration
  def change
    add_column :barrels, :profile, :string
    add_column :barrels, :material, :string
    add_column :barrels, :qty, :string
    add_column :barrels, :price, :numeric
  end
end
