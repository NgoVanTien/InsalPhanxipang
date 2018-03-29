# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create( name: "Phong Toda", password: "3458", email: "phongtoda144@gmail.com", address: "82 Nguyen Luong Bang", phone: "01642025253", personal_card: "206197217", role: "1")
bill = Bill.create(start_renting: "05-03-2018", end_renting: "20-03-2018", total:"14400",status: 1, user_id: user.id)