# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create([
                { title: 'Pasta Carbonara', description: 'Second courses', price: 9.00 }, 
                { title: 'Chicken Soup', description: 'Entrees', price: 13.00 }, 
                { title: 'Vitamin Salad', description: 'Salads', price: 7.00 }, 
                { title: 'Pasta With Walnut', description: 'Second courses', price: 25.00 }, 
                { title: 'Item Four', description: 'Second courses', price: 87.00 }, 
                { title: 'Item Five', description: 'Second courses', price: 57.00 }, 
                { title: 'Item Six', description: 'Second courses', price: 102.00 }
              ])
