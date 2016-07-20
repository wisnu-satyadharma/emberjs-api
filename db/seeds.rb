# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(100){
	Invitation.create(email: Faker::Internet.email)
	Library.create(name: Faker::Company.name, address: Faker::Address.street_address, phone: Faker::PhoneNumber.cell_phone)
	Contact.create(email: Faker::Internet.email, message: Faker::Lorem.paragraph(2))
}
