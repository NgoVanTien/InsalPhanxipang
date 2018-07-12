class Category < ApplicationRecord
    has_many :products
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/categories/images/default-image.png"
    validates_attachment :image, presence: true
    do_not_validate_attachment_file_type :image
    validates :name, presence: true

    #apply default scope for all query of Category
    default_scope {where is_deleted: false}
end
