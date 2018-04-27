class Admin::BillsController < Admin::ApplicationController
  def index
    @bills = Bill.all.page(params[:page]).per(10)     
  end
end

