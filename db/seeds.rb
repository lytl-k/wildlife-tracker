# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AnimalType.where(name: 'Aquatic').first_or_create(name: 'Aquatic')
AnimalType.where(name: 'Land').first_or_create(name: 'Land')
AnimalType.where(name: 'Airborn').first_or_create(name: 'Airborn')

Region.where(name: 'This').first_or_create(name: 'This')
Region.where(name: 'That').first_or_create(name: 'That')
Region.where(name: 'Another').first_or_create(name: 'Another')
Region.where(name: 'Outside').first_or_create(name: 'Outside')
Region.where(name: 'OtherSide').first_or_create(name: 'OtherSide')
