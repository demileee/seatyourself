# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create(name: 'Tai me Tail', address: '44 Queen St. West | Toronto ON', description: 'Great Tai Restaurant', user_id: 1)
Restaurant.create(name: 'Burrito Loco', address: '344 King St. West | Toronto ON', description: 'Great Mexican food', user_id: 2)
Restaurant.create(name: 'Asahi Restaurant', address: '192 Yonge St. | Toronto ON', description: 'Sushi food restaurant', user_id: 1)
Restaurant.create(name: 'Cooper\'s', address: '444 Adelaide St. | Toronto ON', description: 'Brunch Restaurant', user_id: 2)
Restaurant.create(name: 'Hal Tal Mal', address: '916 King St. East | Toronto ON', description: 'Exquisite Indian Cuisine', user_id: 1)
Restaurant.create(name: 'Shopska', address: '692 Bloor St. W | Toronto ON', description: 'Bulgarian Food', user_id: 2)
Restaurant.create(name: 'Che, Boludo', address: '1992 Wilson St.  | Toronto ON', description: 'Argentinean food with a side of Italian', user_id: 2)
Restaurant.create(name: 'Pastamonium', address: '998 Bloor St. W | Toronto ON', description: 'Great Italian Food', user_id: 1)

Reservation.create(
  date_time: Time.now,
  name: "Bob",
  email: "bob@gmail.com",
  notes: "birthday dinner",
  user_id: 1,
  restaurant_id: 1
)
