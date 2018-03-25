class Bill < ApplicationRecord
  belong_to :user
  has_many  :product_bills
end
