# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Order.destroy_all
Pizza.destroy_all
PizzaIngredient.destroy_all
Ingredient.destroy_all

gr_pepper = Ingredient.create(name: "Green Pepper", description: "Fresh from Mama Mario's garden", picture: "https://t3.ftcdn.net/jpg/01/84/64/86/240_F_184648664_jQMtagbUoYpDUZIH6tdDOaLm7mgIGqbp.jpg", category: "veggie")
rd_pepper = Ingredient.create(name: "Red Pepper", description: "Imported from Princess Peach's garden", picture: "https://images.eatthismuch.com/site_media/img/516766_basic_bob_346a16bc-c8b3-42ce-866f-1f59bd24985d.png", category: "veggie")
bn_pepper = Ingredient.create(name: "Banana Pepper", description: "Imported from Isle Delfino", picture: "https://cdn-endpoint-website.azureedge.net/uploads/PhotoModel/14414/image/veg1b1.gallery.jpg", category: "veggie")
spinach = Ingredient.create(name: "Spinach", description: "Popeye's source of iron", picture: "https://cdn-prod.medicalnewstoday.com/content/images/articles/270/270609/spinach.jpg", category: "veggie")
onion = Ingredient.create(name: "Onion", description: "AKA Anti-Alucard", picture: "https://kibsons.com/products/detail/detail/onireaexx250l1/onireaexx250l1.jpg", category: "veggie")
mushroom = Ingredient.create(name: "Mushroom", description: "Straight from the Mushroom Kingdom!", picture: "https://previews.123rf.com/images/alexanderruiz/alexanderruiz1810/alexanderruiz181000735/110894493-sliced-mushrooms.jpg", category: "veggie")
pineapple = Ingredient.create(name: "Pineapple", description: "From Pianta village", picture: "https://cdnimg.webstaurantstore.com/images/products/large/429898/1664584.jpg", category: "veggie")
bl_olives = Ingredient.create(name: "Black olives", description: "Goomba farms sends their signature product", picture: "https://cdn.shopify.com/s/files/1/1115/1664/products/sliced-black-olives-2048_50e3313d-bf59-4a06-a39a-63be40a50fde_grande.jpg", category: "veggie")
jalapenos = Ingredient.create(name: "Jalapenos", description: "Spicy!", picture: "https://d2d8wwwkmhfcva.cloudfront.net/800x/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_9ed0b3fb-b0fe-40ae-a2cf-3632a7e1141a.jpg", category: "veggie")
tomatoes = Ingredient.create(name: "Tomatoes", description: "For more tomato goodness", picture: "https://i.pinimg.com/originals/f7/4b/de/f74bde371dcd76b884d5009a52b25826.jpg", category: "veggie")

marinara = Ingredient.create(name: "Marinara", description: "Classic", picture: "https://veronikaskitchen.com/wp-content/uploads/2020/02/20200217-IMG_2459-1.jpg", category: "sauce")
bbq = Ingredient.create(name: "BBQ", description: "A new trend!", picture: "https://www.rachelcooks.com/wp-content/uploads/2019/04/homemade-bbq-sauce-web-5-of-6.jpg", category: "sauce")
ranch = Ingredient.create(name: "Ranch", description: "Sourced from Crawford, TX.", picture: "https://thesaltymarshmallow.com/wp-content/uploads/2018/12/ranch-dressing3.jpg", category: "sauce")
buffalo = Ingredient.create(name: "Buffalo", description: "No bison were harmed obtaining this sauce", picture: "https://www.dontgobaconmyheart.co.uk/wp-content/uploads/2019/07/homemade-buffalo-sauce-1-500x500.jpg", category: "sauce")
alfredo = Ingredient.create(name: "Alfredo", description: "So creamy", picture: "https://i2.wp.com/natashaskitchen.com/wp-content/uploads/2020/04/White-Sauce-For-Pizza-4-500x500.jpg", category: "sauce")

pepperoni = Ingredient.create(name: "Pepperoni", description: "Classic American pepperoni", picture: "https://p0.pikrepo.com/preview/384/19/two-brown-sausage-on-brown-wooden-table.jpg", category: "meat")
sausage = Ingredient.create(name: "Sausage", description: "Pork sausage", picture: "https://p1.pxfuel.com/preview/534/592/885/sausages-sausage-bratwurst-barbecue.jpg", category: "meat")
anchovy = Ingredient.create(name: "Anchovies", description: "From Peru", picture: "https://www.washingtonpost.com/resizer/3bo_KsT50DBX7tSbSvTnyCMJBM0=/1484x0/arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/SNXNWY7LPI3J7M3AXS4C6OGBKE.jpg", category: "meat")
salami = Ingredient.create(name: "Salami", description: "Cured for an appropriate amount of time", picture: "https://live.staticflickr.com/65535/48177126997_c202904aed_b.jpg", category: "meat")
spicy_italian = Ingredient.create(name: "Spicy Italian Sausage", description: "Wario's specialty", picture: "https://live.staticflickr.com/7163/6774512459_45a3a97ffd_b.jpg", category: "meat")
bacon = Ingredient.create(name: "Bacon", description: "Not Canadian", picture: "https://www.publicdomainpictures.net/pictures/110000/velka/rasher-of-bacon.jpg", category: "meat")
chicken = Ingredient.create(name: "Chicken", description: "Marty McFly's favorite", picture: "https://live.staticflickr.com/65535/49573408716_5a3d59c357_b.jpg", category: "meat")

mozz = Ingredient.create(name: "Mozzarella", description: "A classic choice", picture: "https://live.staticflickr.com/8609/15992023573_f695944840_b.jpg", category: "cheese")
parm = Ingredient.create(name: "Parmesan", description: "Par for the course", picture: "https://cdn.pixabay.com/photo/2017/02/19/18/02/parmesan-2080467_960_720.jpg", category: "cheese")
gorgonzola = Ingredient.create(name: "Gorgonzola", description: "From Gonzaga university", picture: "https://live.staticflickr.com/1333/1418700825_6bfd6a554e_z.jpg", category: "cheese")
prov = Ingredient.create(name: "Provolone", description: "The provenance of our Provelone is nonpareil", picture: "https://live.staticflickr.com/102/291975884_a7de508af0_c.jpg", category: "cheese")

chz = Pizza.create(name: "Classic Cheese", size: "medium", bake: "normal", price: 10.00, cut: 'normal', pic: 'https://live.staticflickr.com/3103/2426649282_6f3c715f24_b.jpg')
pep = Pizza.create(name: "Classic Pepperoni", size: "large", bake: "normal", price:  12.00, cut: 'normal', pic: 'https://live.staticflickr.com/3007/2738662382_c5a0c9f215_b.jpg')
veg = Pizza.create(name: "Veggie-lovers", size: "small", bake: "normal", price:  9.00, cut: 'normal', pic: 'https://live.staticflickr.com/252/452597581_bc01725397_b.jpg')

PizzaIngredient.create(pizza: chz, ingredient: mozz)
PizzaIngredient.create(pizza: chz, ingredient: marinara)

PizzaIngredient.create(pizza: pep, ingredient: mozz)
PizzaIngredient.create(pizza: pep, ingredient: pepperoni)
PizzaIngredient.create(pizza: pep, ingredient: marinara)

PizzaIngredient.create(pizza: veg, ingredient: mozz)
PizzaIngredient.create(pizza: veg, ingredient: tomatoes)
PizzaIngredient.create(pizza: veg, ingredient: marinara)
PizzaIngredient.create(pizza: veg, ingredient: gr_pepper)
PizzaIngredient.create(pizza: veg, ingredient: spinach)
PizzaIngredient.create(pizza: veg, ingredient: bl_olives)
PizzaIngredient.create(pizza: veg, ingredient: mushroom)

paul = Customer.create(name: "Paul Nicholsen", username: "p.nicholsen", address: "1440 G St NW")
ann = Customer.create(name: "Ann Duong", username: "a.duong", address: "601 F St NW")
shannon = Customer.create(name: "Shannon Nabors", username: "s.nabors", address: "850 10th St NW")
chine = Customer.create(name: "Chine Anikwe", username: "c.anikwe", address: "900 NY Ave")

order1 = Order.create(customer: paul, pizza: chz, delivery_instructions: "hurry up")
order2 = Order.create(customer: ann, pizza: pep, delivery_instructions: "i am hungry")
order3 = Order.create(customer: shannon, pizza: chz, delivery_instructions: "no anchovies this time")
order4 = Order.create(customer: chine, pizza: veg, delivery_instructions: "don't send the creepy bike guy")
