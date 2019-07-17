class Car < ApplicationRecord
    belongs_to :seller
    belongs_to :buyer, optional: true
    # associate to the active storage images
    has_many_attached :pictures

    # def self.custom_currency
    #     (@car.price/1000).to_i
    # end
end
