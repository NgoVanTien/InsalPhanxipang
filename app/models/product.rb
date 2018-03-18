class Product < ApplicationRecord
  belongs_to :category
  has_many :product_sizes 
  has_many :product_bills 
end
