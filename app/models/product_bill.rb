class ProductBill < ApplicationRecord
  belongs_to :product
  belongs_to :bill
end
