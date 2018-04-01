class CategoriesController < ApplicationController
    def new
        @category = Category.new
    end

    def create
        @category = Category.new(params.require(:category).permit(:name, :image))
        @category.save
        redirect_to admin_category_path(@category)
    end

    def show
        @category = Category.find_by(params[:id])
    end
end
