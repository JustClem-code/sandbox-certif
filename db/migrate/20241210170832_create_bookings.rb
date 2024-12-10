class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :appart, null: false, foreign_key: true

      t.timestamps
    end
  end
end