class BillsController < ApplicationController
  def show
    @bill = Bill.find_by id: params[:id]
  end
end
