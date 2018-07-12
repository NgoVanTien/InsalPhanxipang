class ProductSize < ApplicationRecord
  belongs_to :product
  belongs_to :size
  # Attributes: color:string, quantity:integer, note:string
end
