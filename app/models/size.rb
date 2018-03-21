class Size < ApplicationRecord
  has_many :product_sizes
  has_many :product_bills
end
