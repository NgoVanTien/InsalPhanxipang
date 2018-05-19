class Admin::ProductBillsController < Admin::ApplicationController
  def show
    @user = User.find_by(id: params[:user])
    @bill = @user.bill
    @productbills = ProductBill.select("product_bills.renting_quantity as quantity, product_bills.reting_fee_product as fee, product_bills.name_product as name")
                    .joins("INNER JOIN bill ON bill.id = bill_id")
                    .where("user.id = user_id")
end
