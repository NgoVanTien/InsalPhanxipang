class Size < ApplicationRecord
    has_many :product_sizes
    has_many :product_bills
    accepts_nested_attributes_for :product_sizes
end
