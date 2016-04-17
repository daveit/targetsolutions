class AddQtyToMiscellaneous < ActiveRecord::Migration
  def change
    add_column :miscellaneous, :qty, :integer
    add_column :miscellaneous, :price, :decimal
  end
end
