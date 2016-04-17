class AddQtyToArcheries < ActiveRecord::Migration
  def change
    add_column :archeries, :qty, :integer
    add_column :archeries, :price, :decimal
    add_column :archeries, :size, :string
  end
end
