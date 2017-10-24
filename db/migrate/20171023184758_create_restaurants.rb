class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :phone
      t.string :pic_url
      t.integer :user_id

      t.timestamps
    end
  end
end
