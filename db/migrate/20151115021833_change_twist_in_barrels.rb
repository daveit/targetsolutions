class ChangeTwistInBarrels < ActiveRecord::Migration
  def change
    change_column :barrels, :twist, :string
  end
end
