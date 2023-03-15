class FreelanceresultsController < ApplicationController

  def new
    @freelancer = Freelancespec.all
  end

  def index
    @projects = Project.all
    @freelancers = Freelancespec.all
    @project = Project.new
  end
  private

  def freelancespec_params
    params.require(:freelancespec).permit(:first_name, :last_name, :skill, :portfolio, :pricing)
  end
end
