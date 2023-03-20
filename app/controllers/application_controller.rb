class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user[:setup] == false
      root_path
    else
      if current_user[:role] == "Freelancer"
        dashboards_path
      else
        freelancespecs_path
      end
    end
  end
end
