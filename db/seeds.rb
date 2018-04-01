# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name:"Ngo Van Tien", password:"12345", email: "ngovantien@deptrai.com", address:"74 nguyen do cung", phone: "0123456789", personal_card: "chung minh", role: "admin")
bill = Bill.create(start_renting: "", end_renting: "", total:"13000", status: 1, user_id: user.id)

date_category = ["Ao Dai", "Vest", "Ao Phong", "Quan Dui"]
date_category.each do |item|
    Category.create(name: item)
end
