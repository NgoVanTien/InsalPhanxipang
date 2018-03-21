class CreateProductSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_sizes do |t|
      t.references :product, foreign_key: true
      t.references :size
      t.string :color
      t.integer :quantity
      t.string :note

      t.timestamps
    end
  end
end
