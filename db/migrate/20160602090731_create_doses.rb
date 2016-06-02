class CreateDoses < ActiveRecord::Migration
  # used : rails generate model Dose description cocktail:references ingredient:references
  def change
    create_table :doses do |t|
      t.string :description
      t.references :cocktail, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
