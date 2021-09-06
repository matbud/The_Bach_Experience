# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Planning.destroy_all
RecommendedActivity.destroy_all
Recommendation.destroy_all
Event.destroy_all
Hotel.destroy_all
Activity.destroy_all
User.destroy_all

puts "creating users"

user1 = User.new(email: "mat@lewagon.com", password: '123123', first_name: "Mateusz", last_name: "Budzisz", admin: true)
file = URI.open('https://res.cloudinary.com/dxessq1na/image/upload/v1630754019/u1_e5oqsc.jpg')
user1.photo.attach(io: file, filename: 'u1.jpg', content_type: 'image/jpg')
user1.save

user2 = User.new(email: "el@lewagon.com", password: '123456', first_name: "Elodie", last_name: "Duffau", admin: true)
file = URI.open('https://res.cloudinary.com/dxessq1na/image/upload/v1630754019/u2_kdtlw2.jpg')
user2.photo.attach(io: file, filename: 'u2.jpg', content_type: 'image/jpg')
user2.save

user3 = User.new(email: "mel@lewagon.com", password: '321321', first_name: "Melanie", last_name: "Olivier", admin: true)
file = URI.open('https://res.cloudinary.com/dxessq1na/image/upload/v1630754019/u3_zzf3gx.jpg')
user3.photo.attach(io: file, filename: 'u2.jpg', content_type: 'image/jpg')
user3.save

user4 = User.new(email: "claire@lewagon.com", password: 'happybirthday', first_name: "Claire", last_name: "Gauthier", admin: false)
file = URI.open('https://res.cloudinary.com/dxessq1na/image/upload/v1630754019/u4_bezmgx.jpg')
user4.photo.attach(io: file, filename: 'u4.jpg', content_type: 'image/jpg')
user4.save

puts "creating hotels"

# To use when pictures on server: @message.image.attach(io: File.open('/path/to/file'), filename: 'file.pdf')

Hotel.create(name: "The Hotel Brussels", location: "Brussels", address: "Boulevard de Waterloo 38, 1000 Brussels, Belgique", description: "In one of Brussels' tallest buildings within a 15-minute walk from Grand Place, The Hotel Brussels features panoramic city views, an on-site gourmet restaurant and free access to a spa, wellness and fitness center overlooking Brussels.", theme:"fancy", price_per_night: 100, photo_name: 'hotel1.jpg')

# hotel1 = Hotel.new(name: "The Hotel Brussels", location: "Brussels", address: "Boulevard de Waterloo 38, 1000 Brussels, Belgique", description: "In one of Brussels' tallest buildings within a 15-minute walk from Grand Place, The Hotel Brussels features panoramic city views, an on-site gourmet restaurant and free access to a spa, wellness and fitness center overlooking Brussels.", theme:"fancy", price_per_night: 100)
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel1.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel1.save

# photo_name: "hotel1.jpg"
Hotel.create(name: "Hygge Hotel", location: "Brussels", address: "Rue des Drapiers 31, 1050 Brussels, Belgique", description: "Welcome to the brand new Hygge Hotel in Brussels, located in the Louise area, one of the best spots in Brussels. We guarantee our best prices!", theme:"cozy, nature", price_per_night: 55, photo_name: 'hotel1.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel2.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel2.save

Hotel.create(name: "MEININGER Hotel Bruxelles", location: "Brussels", address: "Berensheide 8, Watermael-Boitsfort, 1170 Bruxelles, Belgique", description: "The MEININGER Hotel Bruxelles City Center is located in an old brewery building. The imposing brick building built in 1912 has modern facilities.", theme:"wild", price_per_night: 80, photo_name: 'hotel2.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel3.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel3.save

Hotel.create(name: "CityZen M Hotel Amsterdam", location: "Amsterdam", address: "Van Ostadestraat 123, Amsterdam Oud-Zuid, 1072 SV Amsterdam, Pays-Bas", description: "This unique hotel offers modern rooms with mood lighting, free Wi-Fi and a flat-screen TV with free on-demand films. CitizenM Amsterdam South includes designer lounges and is 750 m from the RAI Conference Centre.", theme:"nature, cozy", price_per_night: 60, photo_name: 'hotel3.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel4.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel4.save

Hotel.create(name: "Kimpton De Witt Amsterdam, an IHG Hotel", location: "Amsterdam", address: "Nieuwezijds Voorburgwal 5, Amsterdam City Centre, 1012 RC Amsterdam, Pays-Bas", description: "The Kimpton De Witt Hotel inspires standout stays with features including elements of a 17th century poet's home, local art, swank accommodations, a cocktail", theme:"fancy, cozy", price_per_night: 80, photo_name: 'hotel4.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel5.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel5.save

Hotel.create(name: "THIS HO(S)TEL", location: "Amsterdam", address: "14 Warmoesstraat, Amsterdam City Centre, 1012 JD Amsterdam, Pays-Bas", description: "Sleep comfortable, undisturbed and affordable during your stay in Amsterdam. Every room has a double-bed, integrated storage space and space for 2 guests.", theme:"wild", price_per_night: 40, photo_name: 'hotel5.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel6.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel6.save

Hotel.create(name: "Hôtel Sunny", location: "Paris", address: "48, Boulevard du Port Royal, 5e arr., 75005 Paris, France", description: "This family hotel is located in the 5km outside of Paris. It offers soundproofed rooms with flat-screen satellite TV and private bathroom.", theme:"nature", price_per_night: 60, photo_name: 'hotel6.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel7.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel7.save

Hotel.create(name: "Hôtel Magellan", location: "Paris", address: "17-19 Rue Jean Baptiste Dumas, 17e arr., 75017 Paris, France", description: "Located a 15-minute walk from The Arc de Triomphe and Park Monceau, the Hôtel Magellan has a lounge bar and a garden. With a 24-hour front desk desk, free Wi-Fi is available throughout the hotel.", theme:"fancy, cozy", price_per_night: 80, photo_name: 'hotel7.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel8.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel8.save

Hotel.create(name: "Paris Art Hotel Quartier Latin", location: "Paris", address: "1, Rue Des Ecoles, 5e arr., 75005 Paris, France", description: "Welcome to Paris Art Hotel Quartier-Latin, a charming 3-star boutique hotel in the 5th district of Paris near the Pantheon, Sorbonne and Notre Dame.", theme:"wild", price_per_night: 40, photo_name: 'hotel8.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel9.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel9.save

Hotel.create(name: "Hotel Rural & Spa Can Curreu", location: "Ibiza", address: "Ctra San Carlos, km 12, 07850 Sant Carles de Peralta, Espagne", description: "Located in the village of San Carlos, this luxurious 5-star hotel and spa resort includes an indoor and outdoor swimming pool, a gym and equestrian center. It includes free Wi-Fi.", theme:"cosy, nature", price_per_night: 60, photo_name: 'hotel9.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel10.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel10.save

Hotel.create(name: "Paradiso Ibiza Art Hotel", location: "Ibiza", address: "Playa de Cala Vadella, 07830 Cala Vadella, Espagne", description: "Art comes to life in our most media-friendly hotel. An art gallery curated by ADDA GALLERY PARIS, exhibitions in the lobby, a tattoo studio, the colour pink.", theme:"cosy, wild, fancy", price_per_night: 80, photo_name: 'hotel10.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel11.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel11.save

Hotel.create(name: "Ibiza Ushuaïa Beach Hotel", location: "Ibiza", address: "Periodista Francisco Escanelles 20 83, 07800 Ibiza, Espagne", description: "Set on Playa d’en Bossa Beach, the adults-only Ushuaia Ibiza Beach Hotel features a spa and 3 outdoor pools with large sun beds. Guests enjoy free entrance to live DJ performances hosted by the hotel.", theme:"wild, fancy", price_per_night: 70, photo_name: 'hotel11.jpg')
# file = URI.open('https://unsplash.it/1300/600?random')
# hotel12.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
# hotel12.save

puts "creating activities"

activity1 = Activity.new(name: "Nails treat", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"women", price: 80, photo_name: 'hotel12.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity1.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity1.save

activity2 = Activity.new(name: "Massage", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy, fancy", gender:"mixed", price: 120, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity2.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity2.save

activity3 = Activity.new(name: "Cooking Class", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"mixed", price: 100, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity3.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity3.save

activity4 = Activity.new(name: "Comedy show", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"mixed", price: 60, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity4.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity4.save

activity5 = Activity.new(name: "Beer tasting", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"cozy", gender:"men", price: 40, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity5.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity5.save

activity6 = Activity.new(name: "Spa", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"women", price: 150, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity6.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity6.save

activity7 = Activity.new(name: "Photoshoot", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"women", price: 70, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity7.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity7.save

activity8 = Activity.new(name: "Mimosa Brunch", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"women", price: 45, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity8.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity8.save

activity9 = Activity.new(name: "Wine tasting", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"mixed", price: 65, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity9.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity9.save

activity10 = Activity.new(name: "Cocktail Class", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"mixed", price: 55, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity10.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity10.save

activity11 = Activity.new(name: "Casino", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy, wild", gender:"mixed", price: 25, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity11.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity11.save

activity12 = Activity.new(name: "F1 racing", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"men", price: 175, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity12.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity12.save

activity13 = Activity.new(name: "Golf", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"fancy", gender:"men", price: 115, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity13.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity13.save

activity14 = Activity.new(name: "Pole Dancing class", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"women", price: 85, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity14.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity14.save

activity15 = Activity.new(name: "Open bar boat trip", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixed", price: 75, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity15.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity15.save

activity15 = Activity.new(name: "Strip dancer", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixed", price: 100, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity15.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity15.save

activity16 = Activity.new(name: "Pub crawl", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixed", price: 50, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity16.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity16.save

activity17 = Activity.new(name: "Party bus", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixed", price: 170, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity17.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity17.save

activity18 = Activity.new(name: "Escape room", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"mixed", price: 50, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity18.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity18.save

activity19 = Activity.new(name: "Shooting Range", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"men", price: 50, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity19.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity19.save

activity20 = Activity.new(name: "Paintball", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"men", price: 90, photo_name: 'hotel1.jpg')
file = URI.open('https://unsplash.it/1300/600?random')
activity20.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity20.save

activity21 = Activity.new(name: "Zero Gravity Flight", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"wild", gender:"men", price: 120)
file = URI.open('https://unsplash.it/1300/600?random')
activity21.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity21.save

activity22 = Activity.new(name: "Yoga", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"women", price: 50)
file = URI.open('https://unsplash.it/1300/600?random')
activity22.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity22.save

activity23 = Activity.new(name: "Meditation", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"women", price: 30)
file = URI.open('https://unsplash.it/1300/600?random')
activity23.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity23.save

activity24 = Activity.new(name: "Hiking", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixed", price: 100)
file = URI.open('https://unsplash.it/1300/600?random')
activity24.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity24.save

activity25 = Activity.new(name: "Horse riding", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixed", price: 120)
file = URI.open('https://unsplash.it/1300/600?random')
activity25.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity25.save

activity26 = Activity.new(name: "Treetop adventure course", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixed", price: 80)
file = URI.open('https://unsplash.it/1300/600?random')
activity26.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity26.save

activity27 = Activity.new(name: "Kayak", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixed", price: 70)
file = URI.open('https://unsplash.it/1300/600?random')
activity27.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity27.save

activity28 = Activity.new(name: "Rockclimbing", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"mixed", price: 60)
file = URI.open('https://unsplash.it/1300/600?random')
activity28.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity28.save

activity29 = Activity.new(name: "Bull riding", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"men", price: 40)
file = URI.open('https://unsplash.it/1300/600?random')
activity29.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity29.save

activity30 = Activity.new(name: "Biking", address: "Brussels, Paris, Ibiza, Amsterdam", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", theme:"nature", gender:"men", price: 30)
file = URI.open('https://unsplash.it/1300/600?random')
activity30.photo.attach(io: file, filename: '1.jpg', content_type: 'image/jpg')
activity30.save

puts "done"
