class Admin::CategoriesController < Admin::ApplicationController
  before_action :load_category, only: %i(show destroy edit update)

  def index
    @categories = Category.all
  end

  def destroy
    if @category.destroy
      redirect_to admin_categories_path, :notice => ["xóa thành công", "success"]
    else
      redirect_to admin_categories_path, :notice => ["xóa ko thành công", "error"]
    end
  end

  private

  def load_category
    @category = Category.find_by id: params[:id]
  end
end
