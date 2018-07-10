class Bill < ApplicationRecord
  belongs_to :user
  has_many :product_bills
  scope :find_by_bill, -> bill_id {where bill_id: bill_id}
  scope :get_bill_duration, -> end_renting{
    (end_renting - Date.current()).to_s.split("/")[0].to_i
  }
end
