class Admin::CategoriesController < Admin::ApplicationController
  before_action :load_category, only: [:destroy, :edit, :update]
  def index
    @categories = Category.page(params[:page]).per(6)
  end

  def new
    @category = Category.new
  end

  def create
    if
      @category = Category.create(category_params)
      redirect_to admin_categories_path, :notice => ["Tạo thành công!", "success"]
    else
      redirect_to new_admin_categories_path, :notice => ["Tạo thất bại!", "error"]
    end
  end

  def destroy
    @category.update(is_deleted: true)
    if @category.is_deleted
      redirect_to admin_categories_path, :notice => ["Xóa thành công", "success"]
    else
      redirect_to admin_categories_path, :notice => ["Xóa không thành công", "error"]
    end
  end

  def edit
  end

  def update
    respond_to do |format|
     if @category.update(category_params)
       format.json { head :no_content }
       format.js
     else
       format.json { render json: @category.errors.full_messages,
                                  status: :unprocessable_entity }
     end
   end
 end

  private

  def load_category
    @category = Category.find_by id: params[:id]
  end

  def category_params
    params.require(:category).permit(:name, :image)
  end
end
