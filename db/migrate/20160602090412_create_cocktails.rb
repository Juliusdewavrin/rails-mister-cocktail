class CreateCocktails < ActiveRecord::Migration  
  # used : generate model Cocktail name in terminal

  def change
    create_table :cocktails do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
