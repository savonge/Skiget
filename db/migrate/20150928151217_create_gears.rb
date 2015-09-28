class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :item
      t.string :description
      t.string :size
      t.string :brand
      t.integer :price

      t.timestamps null: false
    end
  end
end
