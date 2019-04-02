# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pizza.destroy_all
Order.destroy_all
PizzaOrder.destroy_all
Deal.destroy_all
PizzaDeal.destroy_all
Topping.destroy_all
PizzaTopping.destroy_all

AdminUser.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

pepperoni = Topping.create(name: 'Pepperoni')
sausage = Topping.create(name: 'Sausage')
gr_pepper = Topping.create(name: 'Green Pepper')
onionn = Topping.create(name: 'Onion')
mush = Topping.create(name: 'Mushroom')

three_topping = Pizza.create!(name: '3 Topping Special', size: 'L', price: 20.99)

PizzaTopping.create!(three_topping.id, pepperoni.id)