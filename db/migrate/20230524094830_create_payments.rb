class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :transaction_id
      t.float :amount
      t.string :status
      t.integer :user_id
      t.integer :class_id
      t.string :payment_method

      t.timestamps
    end
  end
end
