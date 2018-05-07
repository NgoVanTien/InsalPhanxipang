class Admin::CategoriesController < Admin::ApplicationController
  before_action :load_category, only: %i(show destroy edit update)

  def index
    @categories = Category.all
  end

  def destroy
    if @category.destroy
      flash[:success] = "Chúc mừng bạn đả xóa thành công."
    else
      flash[:danger] = "Xin lỗi ! Bạn đã xóa không thành công, xin thử lại."
    end
    redirect_to admin_categories_path
  end

  private

  def load_category
    @category = Category.find_by id: params[:id]
  end
end
