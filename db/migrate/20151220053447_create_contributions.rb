class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.references :guest
      t.string :name
      t.string :description
      t.integer :total_required
      t.integer :total_actual
      t.boolean :full
      t.timestamps null: false
    end
  end
end
