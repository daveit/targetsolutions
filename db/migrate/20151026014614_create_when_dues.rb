class CreateWhenDues < ActiveRecord::Migration
  def change
    create_table :when_dues do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
