# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

product = Product.new(name: "Dice box", price: 15.99, image_url: "url", description: "Fun storage for all you dice needs, carry your dice wherever you go for those on the spot roll checks!")
product.save

product = Product.new(name: "Skeleton dice set", price: 30, image_url: "url", description: "7 piece metal dice set, to feel like the evil necromaner youve always wanted to be. Each dice is well weighted and balanced")
product.save

product = Product.new(name: "Retro arcade dice set", price: 15, image_url: "url", description: "Fun retro inspired resin dice set, have a throwback to the past. Each dice is well weighted and balanced.")
product.save

product = Product.new(name: "Mystery dice set", price: 15, image_url: "url", description: "Take a chance, this set may be: dice not sold anymore, currently being sold, or dice that have not been listed yet.Each dice is well weighted and balanced.")
product.save
