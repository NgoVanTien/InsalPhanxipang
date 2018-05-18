class Product < ApplicationRecord
  belongs_to :category
  scope :find_by_products, -> category_id {where category_id: category_id }
  has_many :product_sizes 
  has_many :product_bills 
  has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
