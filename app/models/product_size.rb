class ProductSize < ApplicationRecord
    belong_to :product
    belong_to :size
end
