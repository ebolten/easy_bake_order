# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

emily = Customer.create(name: "Emily", tel_num: "301")
kemunto = Customer.create(name: "Kemunto", tel_num: "540")

order_one = Order.new
order_one.customer = emily

dd = Bakery.create(name:"Dunkin Donuts",address:"Washington DC")
ad = Bakery.create(name:"Artpast Dulces",address:"Miraflores, Peru")

donut = MenuItem.create(name:"Donut",bakery_id:dd.id)
cake = MenuItem.create(name:"Cake",bakery_id:ad.id)

milk = Ingredient.create(name:"Milk",menu_item_id:donut.id)
wheat = Ingredient.create(name:"Wheat",menu_item_id:donut.id)
eggs = Ingredient.create(name:"Eggs",menu_item_id:donut.id)
sugar = Ingredient.create(name:"Sugar",menu_item_id:cake.id)
icing = Ingredient.create(name:"Icing",menu_item_id:cake.id)


