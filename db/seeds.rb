# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecommendedActivity.destroy_all
Recommendation.destroy_all
Event.destroy_all
Hotel.destroy_all
Activity.destroy_all
User.destroy_all

puts "creating users"

user1 = User.new(email: "mat@lewagon.com", password: '123123', first_name: "Mateusz", last_name: "Budzisz", admin: true)
user1.save

user2 = User.new(email: "el@lewagon.com", password: '123456', first_name: "Elodie", last_name: "Duffau", admin: true)
user2.save

user3 = User.new(email: "mel@lewagon.com", password: '321321', first_name: "Melanie", last_name: "Olivier", admin: true)
user3.save

user4 = User.new(email: "claire@lewagon.com", password: 'happybirthday', first_name: "Claire", last_name: "Gauthier", admin: false)
user4.save

puts "creating hotels"

# To use when pictures on server: @message.image.attach(io: File.open('/path/to/file'), filename: 'file.pdf')

hotel1 = Hotel.new(name: "The Hotel Brussels", address: "Boulevard de Waterloo 38, 1000 Brussels, Belgique", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", price_per_night: 120)
file = URI.open('https://unsplash.it/1300/600?random')
hotel1.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel1.save

hotel2 = Hotel.new(name: "Hygge Hotel", address: "Rue des Drapiers 31, 1050 Brussels, Belgique", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy, wild", price_per_night: 75)
file = URI.open('https://unsplash.it/1300/600?random')
hotel2.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel2.save

hotel3 = Hotel.new(name: "Guest House Les 3 Tilleuls", address: "Berensheide 8, Watermael-Boitsfort, 1170 Bruxelles, Belgique", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", price_per_night: 80)
file = URI.open('https://unsplash.it/1300/600?random')
hotel3.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel3.save

hotel4 = Hotel.new(name: "Bicycle Hotel Amsterdam", address: "Van Ostadestraat 123, Amsterdam Oud-Zuid, 1072 SV Amsterdam, Pays-Bas", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature, cozy", price_per_night: 60)
file = URI.open('https://unsplash.it/1300/600?random')
hotel4.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel4.save

hotel5 = Hotel.new(name: "Kimpton De Witt Amsterdam, an IHG Hotel", address: "Nieuwezijds Voorburgwal 5, Amsterdam City Centre, 1012 RC Amsterdam, Pays-Bas", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy, cozy", price_per_night: 120)
file = URI.open('https://unsplash.it/1300/600?random')
hotel5.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel5.save

hotel6 = Hotel.new(name: "THIS HO(S)TEL", address: "14 Warmoesstraat, Amsterdam City Centre, 1012 JD Amsterdam, Pays-Bas", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", price_per_night: 70)
file = URI.open('https://unsplash.it/1300/600?random')
hotel6.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel6.save

hotel7 = Hotel.new(name: "Hôtel Sunny", address: "48, Boulevard du Port Royal, 5e arr., 75005 Paris, France", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild, nature", price_per_night: 80)
file = URI.open('https://unsplash.it/1300/600?random')
hotel7.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel7.save

hotel8 = Hotel.new(name: "Hôtel Magellan", address: "17-19 Rue Jean Baptiste Dumas, 17e arr., 75017 Paris, France", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy, nature", price_per_night: 150)
file = URI.open('https://unsplash.it/1300/600?random')
hotel8.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel8.save

hotel9 = Hotel.new(name: "Paris Art Hotel Quartier Latin", address: "1, Rue Des Ecoles, 5e arr., 75005 Paris, France", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cosy, wild", price_per_night: 100)
file = URI.open('https://unsplash.it/1300/600?random')
hotel9.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel9.save

hotel10 = Hotel.new(name: "Hotel Rural & Spa Can Curreu", address: "Ctra San Carlos, km 12, 07850 Sant Carles de Peralta, Espagne", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cosy, nature", price_per_night: 100)
file = URI.open('https://unsplash.it/1300/600?random')
hotel10.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel10.save

hotel11 = Hotel.new(name: "Aparthotel Puerto Cala Vadella", address: "Playa de Cala Vadella, 07830 Cala Vadella, Espagne", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cosy, wild, fancy", price_per_night: 90)
file = URI.open('https://unsplash.it/1300/600?random')
hotel11.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel11.save

hotel12 = Hotel.new(name: "One Ibiza Suites", address: "Periodista Francisco Escanelles 20 83, 07800 Ibiza, Espagne", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild, fancy", price_per_night: 150)
file = URI.open('https://unsplash.it/1300/600?random')
hotel12.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
hotel12.save

puts "creating activities"

activity1 = Activity.new(name: "Nails treat", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"woman", price: 80)
file = URI.open('https://unsplash.it/1300/600?random')
activity1.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity1.save

activity2 = Activity.new(name: "Massage", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy, fancy", gender:"mixte", price: 120)
file = URI.open('https://unsplash.it/1300/600?random')
activity2.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity2.save

activity3 = Activity.new(name: "Cooking Class", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"mixte", price: 100)
file = URI.open('https://unsplash.it/1300/600?random')
activity3.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity3.save

activity4 = Activity.new(name: "Comedy show", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"mixte", price: 60)
file = URI.open('https://unsplash.it/1300/600?random')
activity4.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity4.save

activity5 = Activity.new(name: "Beer tasting", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"man", price: 40)
file = URI.open('https://unsplash.it/1300/600?random')
activity5.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity5.save

activity6 = Activity.new(name: "Spa", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"woman", price: 150)
file = URI.open('https://unsplash.it/1300/600?random')
activity6.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity6.save

activity7 = Activity.new(name: "Photoshoot", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"woman", price: 70)
file = URI.open('https://unsplash.it/1300/600?random')
activity7.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity7.save

activity8 = Activity.new(name: "Mimosa Brunch", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"woman", price: 45)
file = URI.open('https://unsplash.it/1300/600?random')
activity8.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity8.save

activity9 = Activity.new(name: "Wine tasting", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"mixte", price: 65)
file = URI.open('https://unsplash.it/1300/600?random')
activity9.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity9.save

activity10 = Activity.new(name: "Cocktail Class", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"mixte", price: 55)
file = URI.open('https://unsplash.it/1300/600?random')
activity10.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity10.save

activity11 = Activity.new(name: "Casino", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy, wild", gender:"mixte", price: 25)
file = URI.open('https://unsplash.it/1300/600?random')
activity11.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity11.save

activity12 = Activity.new(name: "F1 racing", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"man", price: 175)
file = URI.open('https://unsplash.it/1300/600?random')
activity12.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity12.save

activity13 = Activity.new(name: "Golf", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"man", price: 115)
file = URI.open('https://unsplash.it/1300/600?random')
activity13.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity13.save

activity14 = Activity.new(name: "Pole Dancing class", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"woman", price: 85)
file = URI.open('https://unsplash.it/1300/600?random')
activity14.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity14.save

activity15 = Activity.new(name: "Open bar boat trip", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixte", price: 75)
file = URI.open('https://unsplash.it/1300/600?random')
activity15.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity15.save

activity15 = Activity.new(name: "Strip dancer", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixte", price: 100)
file = URI.open('https://unsplash.it/1300/600?random')
activity15.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity15.save

activity16 = Activity.new(name: "Pub crawl", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixte", price: 50)
file = URI.open('https://unsplash.it/1300/600?random')
activity16.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity16.save

activity17 = Activity.new(name: "Party bus", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixte", price: 170)
file = URI.open('https://unsplash.it/1300/600?random')
activity17.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity17.save

activity18 = Activity.new(name: "Escape room", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixte", price: 50)
file = URI.open('https://unsplash.it/1300/600?random')
activity18.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity18.save

activity19 = Activity.new(name: "Shooting Range", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"man", price: 50)
file = URI.open('https://unsplash.it/1300/600?random')
activity19.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity19.save

activity20 = Activity.new(name: "Paintball", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"man", price: 90)
file = URI.open('https://unsplash.it/1300/600?random')
activity20.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity20.save

activity21 = Activity.new(name: "Zero Gravity Flight", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"man", price: 120)
file = URI.open('https://unsplash.it/1300/600?random')
activity21.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity21.save

activity22 = Activity.new(name: "Yoga", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"woman", price: 50)
file = URI.open('https://unsplash.it/1300/600?random')
activity22.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity22.save

activity23 = Activity.new(name: "Meditation", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"woman", price: 30)
file = URI.open('https://unsplash.it/1300/600?random')
activity23.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity23.save

activity24 = Activity.new(name: "Hiking", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixte", price: 100)
file = URI.open('https://unsplash.it/1300/600?random')
activity24.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity24.save

activity25 = Activity.new(name: "Horse riding", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixte", price: 120)
file = URI.open('https://unsplash.it/1300/600?random')
activity25.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity25.save

activity26 = Activity.new(name: "Treetop adventure course", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixte", price: 80)
file = URI.open('https://unsplash.it/1300/600?random')
activity26.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity26.save

activity27 = Activity.new(name: "Kayak", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixte", price: 70)
file = URI.open('https://unsplash.it/1300/600?random')
activity27.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity27.save

activity28 = Activity.new(name: "Rockclimbing", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixte", price: 60)
file = URI.open('https://unsplash.it/1300/600?random')
activity28.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity28.save

activity29 = Activity.new(name: "Bull riding", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"man", price: 40)
file = URI.open('https://unsplash.it/1300/600?random')
activity29.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity29.save

activity30 = Activity.new(name: "Biking", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"man", price: 30)
file = URI.open('https://unsplash.it/1300/600?random')
activity30.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity30.save

puts "done"
