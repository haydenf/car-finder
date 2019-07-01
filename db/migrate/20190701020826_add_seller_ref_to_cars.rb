class AddSellerRefToCars < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :seller, foreign_key: true
  end
end
