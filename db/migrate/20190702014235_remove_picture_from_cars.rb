class RemovePictureFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :picture, :string
  end
end
