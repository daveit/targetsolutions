class ChangeBarrelsQty < ActiveRecord::Migration
  def change
    change_column :barrels, :qty, :integer
  end
end
