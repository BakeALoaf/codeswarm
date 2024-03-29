class DashboardsController < ApplicationController
  def index
    @users = User.all
    @requests = Request.where(recipient_id: current_user)
    @requestsender = Request.where(sender_id: current_user)
  end

  def update
      params[:users].each do |id, user_params|
      user = User.find(id)
      user.update(user_params.permit(:admin))
    end
    redirect_to dashboard_path, notice: "Admin status updated."
  end
end
