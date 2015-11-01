class AddDueRefToRifle < ActiveRecord::Migration
  def change
    add_reference :rifles, :due, index: true, foreign_key: true
  end
end
