class AddBoreToBarrels < ActiveRecord::Migration
  def change
    add_column :barrels, :bore, :string
  end
end
