class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :date_time
      t.string :name
      t.string :email
      t.text :notes
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
