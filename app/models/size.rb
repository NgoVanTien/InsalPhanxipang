class Size < ApplicationRecord
  has_many :product_bills
  has_many :product_sizes
end
