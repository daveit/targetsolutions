class AddStyleToRifles < ActiveRecord::Migration
  def change
    add_column :rifles, :style, :string
    add_column :rifles, :price, :numeric
  end
end
