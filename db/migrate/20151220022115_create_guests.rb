class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.references :rsvp
      t.string :name
      t.string :email
      t.boolean :send_notifications
      t.timestamps null: false
    end
  end
end
