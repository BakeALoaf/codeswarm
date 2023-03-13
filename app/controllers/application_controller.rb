class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user[:setup] == false
      root_path
    else
      dashboards_path
    end
  end
end
