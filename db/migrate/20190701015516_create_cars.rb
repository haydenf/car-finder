class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :picture
      t.string :make
      t.string :model
      t.string :year
      t.string :km
      t.float :price
      t.string :color
      t.date :registration
      t.text :description
      t.string :fuel_type
      t.string :transmission_type
      t.text :location

      t.timestamps
    end
  end
end
