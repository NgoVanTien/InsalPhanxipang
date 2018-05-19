class Bill < ApplicationRecord
  belongs_to :user
  has_many :product_bills

  scope :find_by_bill, -> bill_id {where bill_id: id_bt}
end
