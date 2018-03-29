# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "Mai Thao", password: "0508", email: "thao@gmail.com",address: "Da Nang", phone: "090", personal_card: "chung minh", role: "admin")
bill = Bill.create(start_renting: "27/09/2018", end_renting: "22/11/2018", total: "39.000", status:"hết hạn", user_id: user.id)