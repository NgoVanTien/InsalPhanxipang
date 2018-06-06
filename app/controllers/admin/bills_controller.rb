class Admin::BillsController < Admin::ApplicationController
  def index
    @bills = Bill.all.page(params[:page]).per(10)
    @bill = Bill.new
    @bill = User.new
  end

  def show
    @bill = Bill.find_by_id(params[:id])
    @user = @bill.user
    @products_id = ProductBill.find_by_billid(@bill.id).distinct.pluck("product_id")
    @products_number = ProductBill.find_by_billid(@bill.id).group(:product_id).count()
    @products_name = []
    @products_price = []
    @products_id.each do |id|
      @p= Product.find_by_id(id)
      @products_name.push(@p.name)
      @products_price.push(@p.price)
    end
    respond_to do |format|
      format.js { }
    end
  end
end
