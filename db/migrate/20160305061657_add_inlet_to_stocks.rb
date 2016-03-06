class AddInletToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :inlet, :string
    add_column :stocks, :colour, :string
    add_column :stocks, :price, :numeric
  end
end
