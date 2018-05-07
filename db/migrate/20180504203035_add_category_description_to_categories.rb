class AddCategoryDescriptionToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :category_description, :string
  end
end
