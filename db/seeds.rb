# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create!(sku: 'PETROL', name: '1000-crude-oil ', price: 100000 )
Product.create!(sku: 'GOLD', name: '24-carat gold', price: 50000 )
Product.create!(sku: 'CAR',  name: 'Bentley 4x4', price: 280000 )

Product.create!(sku: 'PETROL',  name: '10-crude-oil', price: 520 )
Product.create!(sku: 'PETROL', name: '100-crude-oil', price: 5200 )
Product.create!(sku: 'PETROL', name: 'Tanker-45k-dwt', price: 18000000 )

Product.create!(sku: 'RUBY', name: '1-carat-ruby', price: 3500 )
Product.create!(sku: 'EMERALD', name: '2-carat-emerald', price: 2900 )

Product.create!(sku: 'DIAMOND', name: '1-carat-uncut-diamond', price: 1500 )
