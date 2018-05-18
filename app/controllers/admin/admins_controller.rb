class Admin::AdminsController < ApplicationController
  before_action :login_success, except: :destroy
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to admin_categories_path, :notice => ["Đăng nhập thành công!", "success"]
    else
      redirect_to admin_root_path, :notice => ["Đăng nhập sai!", "error"]
    end
  end
  def destroy
    log_out
    redirect_to admin_root_path, :notice => ["Đăng xuất thành công!", "success"]
  end

end
