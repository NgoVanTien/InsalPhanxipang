class Bill < ApplicationRecord
  belongs_to :user
  has_many :product_bills
end
