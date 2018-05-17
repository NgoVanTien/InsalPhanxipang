class Admin::CategoriesController < Admin::ApplicationController
  before_action :load_category, only: %i(index)
  def index
    @categories = Category.all.page(params[:page]).per(5)
    @new_category = Category.new
    @load_category = Category.find_by id: params[:id]
  end

  def create
    if @new_category = Category.create(category_params)
      redirect_to admin_categories_path, :notice => ["Tạo thành công!", "success"]
    else
      redirect_to new_admin_category_path, :notice => ["Tạo thất bại!", "error"]
    end
  end

  def new
    redirect_to admin_categories_path
  end
end

private
  def category_params
    params.require(:category).permit(:name, :picture)
  end

  def load_category
    @load_category = Category.find_by id: params[:id]
  end
