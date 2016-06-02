# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#reset data
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "mojito")
Cocktail.create(name: "Long island ice tea")
Cocktail.create(name: "Sambuca")
