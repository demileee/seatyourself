class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :date_time
      t.string :name
      t.string :email
      t.text :notes
      t.string :phone
      t.string :pic_url
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
