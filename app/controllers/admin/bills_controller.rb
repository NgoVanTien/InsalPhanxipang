class Admin::BillsController < Admin::ApplicationController
  def index
    @bills = Bill.all.page(params[:page]).per(10)
  end

  def show
    @bill = Bill.find_by_bill(params[:id]).page(params[:page]).per(12)
  end

end
