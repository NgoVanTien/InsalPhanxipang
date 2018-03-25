class ProductBill < ApplicationRecord
    belong_to :product
    belong_to :bill
    belong_to :size
end
