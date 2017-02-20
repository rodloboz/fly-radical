class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :lesson_slot, foreign_key: true
      t.string :status
      t.date :payment_date
      t.date :booking_date
      t.integer :quantity

      t.timestamps
    end
  end
end
