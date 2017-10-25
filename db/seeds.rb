# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create(name: 'Thai me Tail', address: '44 Queen St. West | Toronto ON', description: 'Great Thai Restaurant', phone: '416-555-1234', pic_url: 'https://www.rosasthaicafe.com/wp-content/uploads/2016/10/rosas-latest-recipes-867x520.jpg', user_id: 4 )
Restaurant.create(name: 'Burrito Loco', address: '344 King St. West | Toronto ON', description: 'Great Mexican food', phone: '416-555-1234', pic_url: 'https://img.grouponcdn.com/deal/iJVvZzL5wXt2WdwKgQhLgN/186347703-3642x2185/v1/c700x420.jpg', user_id: 1)
Restaurant.create(name: 'Asahi Restaurant', address: '192 Yonge St. | Toronto ON', description: 'Sushi food restaurant', phone: '416-555-1234', pic_url: 'https://img.grouponcdn.com/deal/hfefAup1zQWBE2K8sWURgS27xax/hf-846x508/v1/c700x420.jpg', user_id: 4)
Restaurant.create(name: 'Cooper\'s', address: '444 Adelaide St. | Toronto ON', description: 'Brunch Restaurant', phone: '416-555-1234', pic_url: 'http://www.zannavandijk.co.uk/wp-content/uploads/2017/05/PA060081.c704a3-2.jpg', user_id: 4)
Restaurant.create(name: 'Hal Tal Mal', address: '916 King St. East | Toronto ON', description: 'Exquisite Indian Cuisine', phone: '416-555-1234', pic_url: 'http://voyagela.com/wp-content/uploads/2016/10/1-1000x600.jpg', user_id: 4)
Restaurant.create(name: 'Shopska', address: '692 Bloor St. W | Toronto ON', description: 'Bulgarian Food', phone: '416-555-1234', pic_url: 'http://deal.com.mt/slides/34e737a3e60bd2904634da2eaedf06941457542004.jpg', user_id: 4)
Restaurant.create(name: 'Che, Boludo', address: '1992 Wilson St.  | Toronto ON', description: 'Argentinean food with a side of Italian', phone: '416-555-1234', pic_url: 'https://i1.wp.com/www.workingchef.com.ar/wp-content/uploads/2016/11/salmuera-asado.jpg?resize=1000%2C600', user_id: 4)
Restaurant.create(name: 'Pastamonium', address: '998 Bloor St. W | Toronto ON', description: 'Great Italian Food', phone: '416-555-1234', pic_url: 'https://www.diabetes.org.uk/resources-s3/migration/recipes/SpagettiBolognaise1000x600.jpg', user_id: 4)

User.create(name: 'Ari Argirov', email: 'dj.giro@gmail.com', phone: '6475054488', preference: 'thai', password_digest: BCrypt::Password.create('123')) #so a password hash can be created
User.create(name: 'Horacio', email: 'ho@ho.com', phone: '6475033488', preference: 'mexican', password_digest: BCrypt::Password.create('123'))
User.create(name: 'Demi', email: 'dm@dm.com', phone: '6335554488', preference: 'bbq', password_digest: BCrypt::Password.create('123'))
User.create(name: 'Arthur', email: 'owner@owner.com', role: 'owner' ,phone: '6475054444', preference: 'italian', password_digest: BCrypt::Password.create('123'))

Reservation.create(date_time: Time.now , name: 'Ari' , email: 'dj.giro@gmail.com', notes: 'I better not have to wait!', user_id: 1, restaurant_id: 1)
Reservation.create(date_time: Time.now + 3.hours , name: 'Demi' , email: 'dm@dm.com' , notes: 'No notes', user_id: 2, restaurant_id: 2)
Reservation.create(date_time: Time.now + 1.5.days , name: 'Horacio' , email: 'ho@ho.com', notes: 'I better not have to wait!', user_id: 3, restaurant_id: 3)
Reservation.create(date_time: Time.now + 15.minutes , name: 'bob' , email: 'bob@bob.com', notes: 'Ahahaahaha!', restaurant_id: 4)
