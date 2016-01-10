class CreateDietaryRequirements < ActiveRecord::Migration
  def change
    create_table :dietary_requirements do |t|
      t.references :guest
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :gluten_free
      t.boolean :dairy_free
      t.boolean :other
      t.text :other_description
      t.timestamps null: false
    end
  end
end
