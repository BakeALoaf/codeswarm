class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def update
    raise
    current_user.update(:setup, true)
    redirect_to dashboard_path
  end
end
