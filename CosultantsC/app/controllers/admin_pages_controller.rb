class AdminPagesController < ApplicationController
  before_filter :authenticate_user!

  def admins
    @admins = Admin.all
  end

  def static_information
    @static_page = StaticPages.first
  end

  def destroy
    if(Admin.count > 1)
      @user = User.find(params[:id])
      @user.destroy()
    end
    redirect_to admin_users_path
  end

end
