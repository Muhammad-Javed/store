# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  product_list =  [["Think and Grow Rich", 200, "A book that changed millions of lives"],
                    ["SEEKER", 300, "A book that make you think about your life"]]
  # Product.create([{name: 'Rich Dad Poor Dad', price: 300, discription: "One of the most famouse book for Character Building",
  #   catagory_id:7 }])
  product_list.each do |name,price,discription|
    Product.create(name: name, price:price, discription: discription, catagory_id:7)
  end


