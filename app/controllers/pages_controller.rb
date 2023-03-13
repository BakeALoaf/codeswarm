class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def update
    current_user.update(user_params)
    redirect_to dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(:setup)
  end

end
