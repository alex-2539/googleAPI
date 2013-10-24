class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :origins
      t.string :destinations
      t.string :sensor
      t.string :mode
      t.string :units
      t.timestamps
    end
  end
end
