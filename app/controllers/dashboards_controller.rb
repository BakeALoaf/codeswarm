class DashboardsController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to dashboards_path, notice: "Admin status updated."
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:admin)
  end
end
