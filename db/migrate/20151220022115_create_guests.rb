class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.boolean :send_notifications
      t.timestamps null: false
    end
  end
end
