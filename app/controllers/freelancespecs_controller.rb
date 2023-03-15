class FreelancespecsController < ApplicationController
  def new
    @freelancespec = Freelancespec.new
  end

  def create
    @freelancespec = current_user.build_freelancespec(freelancespec_params)
    if @freelancespec.save
      current_user.update(setup: true)
      current_user.update(role: "Freelancer")
      redirect_to dashboards_path, notice: 'Freelance profile was successfully created.'
    else
      render :new
    end
  end

  def edit
    @freelancespec = Freelancespec.find(params[:id])
  end

  def update
    @freelancespec = Freelancespec.find(params[:id])
    if @freelancespec.update(freelancespec_params)
      redirect_to @freelancespec, notice: 'Freelance profile was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @freelancespec = Freelancespec.find(params[:id])
    @freelancespec.destroy
    redirect_to freelancespecs_url, notice: 'Freelance profile was successfully destroyed.'
  end

  private

  def freelancespec_params
    params.require(:freelancespec).permit(:first_name, :last_name, :skill, :portfolio, :pricing)
  end
end
