class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.boolean :response
      t.boolean :wedding
      t.boolean :friday_dinner
      t.boolean :friday_camping
      t.boolean :saturday_breakfast
      t.boolean :saturday_camping
      t.boolean :sunday_breakfast
      t.timestamps null: false
    end
  end
end
