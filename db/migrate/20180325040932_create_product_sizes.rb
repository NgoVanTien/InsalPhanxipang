class CreateProductSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_sizes do |t|
      t.string :color
      t.integer :quantity
      t.string :note
      t.references :product, foreign_key: true
      t.references :size, foreign_key: true

      t.timestamps
    end
  end
end
