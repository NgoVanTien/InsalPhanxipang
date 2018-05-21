class Cart < ActiveRecord::Base
has_many :items

def add_item(product_id)
    if item
        # increase the quantity of product in cart
        count + 1
        save
    else
        # product does not exist in cart
        product = Product.find(product_id)
        items << product
    end
    save
end

def total_price
    items.to_a.sum(&:full_price)
end
end
