class AddFitToTriggers < ActiveRecord::Migration
  def change
    add_column :triggers, :fit, :string
    add_column :triggers, :quantity, :integer
    add_column :triggers, :price, :decimal
  end
end
