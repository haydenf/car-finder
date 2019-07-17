class BuyersSeller < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
end
