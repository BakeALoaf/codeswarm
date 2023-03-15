class FreelanceresultsController < ApplicationController

  def new
    @freelancer = Freelancespec.all
  end

  def index
    if params[:tags].present?
      @freelancers = Freelancespec.tagged_with(params[:tags]).by_skill_in_project(params[:tags])
    else
      @freelancers = Freelancespec.all
    end
  end
  private

  def freelancespec_params
    params.require(:freelancespec).permit(:first_name, :last_name, :skill, :portfolio, :pricing)
  end
end
