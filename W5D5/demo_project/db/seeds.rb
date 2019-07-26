# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
person_1 = Person.create(name: 'Kevin', address: '1')
person_2 = Person.create(name: 'Scott', :address: '2')
person_3 = Person.create(name: 'Sauce', address: '1')
person_4 = Person.create(name: 'Johanna', :address: '2')
person_5 = Person.create(name: 'Cuong', :address: '3')

House.destroy_all
house_1 = House.create(address: '1')
house_2 = House.create(address: '2')
house_3 = House.create(address: '3')
