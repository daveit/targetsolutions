class AddPriceAndMagToOptics < ActiveRecord::Migration
  def change
    add_column :optics, :price, :numeric
    add_column :optics, :mag, :string
  end
end
