class CreateDues < ActiveRecord::Migration
  def change
    create_table :dues do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
