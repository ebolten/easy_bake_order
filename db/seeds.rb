# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

emily = Customer.create(name: "Emily", tel_num: "301")
kemunto = Customer.create(name: "Kemunto", tel_num: "540")

order_one = Order.create(customer_id:1,is_delivery?:false)

dd = Bakery.create(name:"Dunkin Donuts",address:"Washington DC")

donut = MenuItem.create(name:"Donut",bakery_id:1)

milk = Ingredient.create(name:"Milk",menu_item_id:1)
wheat = Ingredient.create(name:"Wheat",menu_item_id:1)
eggs = Ingredient.create(name:"Eggs",menu_item_id:1)
sugar = Ingredient.create(name:"Sugar",menu_item_id:1)
icing = Ingredient.create(name:"Icing",menu_item_id:1)