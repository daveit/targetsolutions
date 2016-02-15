class ChangeBarrelsQty < ActiveRecord::Migration
  def change
    change_column :barrels, :qty, 'integer USING CAST("qty" AS integer)'
  end
end
