class DashboardsController < ApplicationController

  def new
    @users = User.all
  end

end
