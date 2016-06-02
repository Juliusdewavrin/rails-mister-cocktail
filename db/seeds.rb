# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#reset data
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "whisky")
Ingredient.create(name: "vodka")
Ingredient.create(name: "ice tea")
