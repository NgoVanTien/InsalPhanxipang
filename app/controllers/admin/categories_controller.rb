class Admin::CategoriesController < ApplicationController
    layout "admin"

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(params.require(:category).permit(:name, :image))
        @category.save
        redirect_to admin_category_path(@category.id)
    end

    def show
        @category = Category.find(params[:id])
    end
end
