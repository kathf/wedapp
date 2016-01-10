class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references :guest
      t.references :linked_guest
      t.string :response
      t.datetime :arrive
      t.datetime :leave
      t.date :rsvp_date
      t.timestamps null: false
    end
  end
end
