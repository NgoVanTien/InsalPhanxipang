class Admin::ProductsController < Admin::ApplicationController
	before_action :get_product, only: [:show]
	def index
		@product = Product.new
		@products = Product.all
		@categories = Category.all
		if params[:category_id] != nil
			@products = Product.find_by_products(params[:category_id]).page(params[:page]).per(12)
		else
			@products = Product.find_by_products(1).page(params[:page]).per(12)
		end
	end
	def show
	end
	def new
		@product = Product.new
	end
	def create
		if
			@product = Product.create(product_params)
			redirect_to admin_products_path, :notice => ["Tạo thành công!", "success"]
		else
		  redirect_to new_admin_product_path, :notice => ["Tạo thất bại!", "error"]
		end
	end
	def destroy
		@products = Product.find_by id: params[:product_id]
		if @products.destroy
			flash[:notice] = [t("admin.products.notice_delete"), "success"]
			if params[:category_id] != nil
				@products = Product.find_by_products(params[:category_id]).page(params[:page]).per(12)
			else
				@products = Product.find_by_products(1).page(params[:page]).per(12)
			end
			params[:id] = ""
		end
	end
	private
		def get_product
			@product = Product.find_by id: params[:id]
		end
		def product_params
			params.require(:product).permit(:image, :name, :price, :renting_fee, :category_id)
		end
end
