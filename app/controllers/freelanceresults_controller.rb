class FreelanceresultsController < ApplicationController

  def new
    @freelancer = Freelancespec.all
  end

  def index
    @freelancers = Freelancespec.all
  end
end
