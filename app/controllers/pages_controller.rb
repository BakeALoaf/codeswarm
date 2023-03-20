class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show]

  def home
  end

  def show
  end

  def update
    current_user.update(user_params)
    current_user.update(role_params)
    redirect_to dashboards_path
  end

  private

  def user_params
    params.require(:user).permit(:setup)
  end

  def role_params
    params.require(:user).permit(:role)
  end
end
