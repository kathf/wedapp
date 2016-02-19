class CreateTransports < ActiveRecord::Migration
  def change
    create_table :transports do |t|
      t.boolean :bus
      t.string :bus_location
      t.boolean :driving
      t.boolean :none
      t.timestamps null: false
    end
  end
end
