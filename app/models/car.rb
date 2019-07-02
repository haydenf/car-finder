class Car < ApplicationRecord
    belongs_to :seller
    # associate to the active storage images
    has_many_attached :pictures

    # def self.custom_currency
    #     (@car.price/1000).to_i
    # end
end
