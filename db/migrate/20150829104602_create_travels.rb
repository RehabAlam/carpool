class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :name
      t.integer :source_city_id
      t.integer :dest_city_id
      t.integer :cost
      t.integer :distance
      t.integer :duration

      t.timestamps null: false
    end
  end
end
