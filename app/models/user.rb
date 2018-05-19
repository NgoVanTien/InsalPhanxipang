class User < ApplicationRecord
  has_secure_password
  has_many :bills
  scope :find_by_role,  -> role_number {where role: role_number}

end
