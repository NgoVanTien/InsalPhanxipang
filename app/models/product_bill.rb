class ProductBill < ApplicationRecord
  belongs_to :product
  belongs_to :bill
  belongs_to :size
  scope :find_by_billid, -> id {where bill_id: id }
end
