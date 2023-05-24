class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :class_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
