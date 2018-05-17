class RemoveImageFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :image, :string
  end
end
