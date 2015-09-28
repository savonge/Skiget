class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :start
      t.date :end
      t.references :gear, index: true, foreign_key: true
      # t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
