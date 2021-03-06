class Admin::ProductsController < Admin::ApplicationController
	before_action :get_product, only: [:show, :edit, :update, :destroy]
	before_action :load_categories, only: [:index, :edit, :new, :update]
	def index
		if(params[:search].present?)
			q = params[:search]
			products = Product.where(status: :active).search(name_cont: q).result.page(params[:page]).order(id: :desc).per(12)
			@products = products
			@action = true
			respond_to do |format|
				format.js
				format.html
			end
		else
			@products = Product.all.page(params[:page]).per(12)
			@categories = Category.all
			if params[:category_id] != nil
				@products = Product.where(status: :active).find_by_products(params[:category_id]).order(id: :desc).page(params[:page]).per(12)
			else
				@products = Product.where(status: :active).find_by_products(1).page(params[:page]).order(id: :desc).per(12)
	    end
		end
	end
	def new
		@product = Product.new
  end

	def create
		respond_to do |format|
      if @product = Product.create(product_params)
        format.js
      else
        format.json { render json: @product.errors.full_messages,
                            status: :unprocessable_entity }
      end

    end
  end

  def show
    @product_size = @product.product_sizes
  end

  def edit
    @product_size = @product.product_sizes
  end

  def update
		respond_to do |format|
      if @product.update(product_params)
				format.js
      else
        format.json { render json: @product.errors.full_messages,
					status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if (Product.update(params[:id],:status => "remove"))
			flash[:notice] = [t("admin.products.notice_delete"), "success"]
			if params[:category_id] != nil
        @products = Product.where(status: :active).find_by_products(params[:category_id]).order(id: :desc).page(params[:page]).per(12)
			else
        @products = Product.where(status: :active).find_by_products(1).order(id: :desc).page(params[:page]).per(12)
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
		def load_categories
			@categories = Category.all
		end

end
