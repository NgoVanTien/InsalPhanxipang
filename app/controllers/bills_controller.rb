class BillsController < ApplicationController
    before_action :get_bill, only: [:show]
    def index
        @bills = Bill.all        
    end
    def show
         @bill = Bill.find_by_id param[:id]
    end
    def new
        @bill = Bill.new
    end
    def create
        @bill = Bill.create(bill_params)        
        @bill.save        
        redirect_to bills_path
    end
private 
    def get_bill
       @bill = Bill.find_by id: params[:id]
    end
    def bill_params
        params.require(:bill).permit(:start_renting, :end_renting, :total, :status, :user_id)
    end
end
