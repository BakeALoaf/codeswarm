class DashboardsController < ApplicationController
  def index
    @users = User.all
  end

  def update
      user_params.each do |id, user_params|
      user = User.find(id)
      user.update(user_params)
    end
    redirect_to dashboard_path, notice: "Admin status updated."
  end

  private

  def user_params
    params.require(:user).permit!.to_h.transform_values { |v| { admin: v } }
  end
end
