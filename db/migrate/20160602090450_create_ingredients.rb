class CreateIngredients < ActiveRecord::Migration
  # Used generate model Ingredient name in terminal
  def change
    create_table :ingredients do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
