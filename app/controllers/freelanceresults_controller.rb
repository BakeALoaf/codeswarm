class FreelanceresultsController < ApplicationController

  def new
    @user = User.all
  end

  def index
    @users = User.all
  end

end
