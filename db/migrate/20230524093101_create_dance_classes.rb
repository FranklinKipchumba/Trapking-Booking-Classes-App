class CreateDanceClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :dance_classes do |t|
      t.string :classname
      t.string :description
      t.string :duration
      t.integer :capacity

      t.timestamps
    end
  end
end
