class Admin::AdminsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      redirect_to admin_categories_path
    else
      redirect_to admin_root_path
    end
  end
end
