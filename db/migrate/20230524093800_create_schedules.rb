class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :class_id
      t.time :start_time
      t.time :end_time
      t.string :availability

      t.timestamps
    end
  end
end
