# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
data_category = ["Ao Dai", "Vest", "Ao Phong", "Quan Dui"]
data_product = ["Váy đuôi cá" , "Váy cưới đuôi mèo", "Váy cưới kim sa"]
user = User.create( name: "Phong Toda", password: "3458", email: "phongtoda144@gmail.com", address: "82 Nguyen Luong Bang", phone: "01642025253", personal_card: "206197217", role: "1")
bill = Bill.create(start_renting: "2018-03-05", end_renting: "2018-03-20", total:"14400",status: 1, user_id: user.id)
product = Product.create(name: "Váy đuôi cá", price: "500 000", renting_fee: "200 000" )
# size = Size.create(color: "red", quantity: "1")
data_category.each do |item|
  Category.create(name: item)
end