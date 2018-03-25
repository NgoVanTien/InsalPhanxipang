class Product < ApplicationRecord
  belongs_to :category
  has_many :product_bills
  has_many :product_sizes
end
