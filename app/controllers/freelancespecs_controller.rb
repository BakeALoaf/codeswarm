class FreelancespecsController < ApplicationController
  def index
    @freelancespecs = Freelancespec.all
  end

  def new
    @freelancespec = Freelancespec.new
  end

  def create
    @freelancespec = Freelancespec.new(freelancespec_params)
    if @freelancespec.save
      redirect_to @freelancespec, notice: 'Freelance spec was successfully created.'
    else
      render :new
    end
  end

  def show
    @freelancespec = Freelancespec.find(params[:id])
  end

  def edit
    @freelancespec = Freelancespec.find(params[:id])
  end

  def update
    @freelancespec = Freelancespec.find(params[:id])
    if @freelancespec.update(freelancespec_params)
      redirect_to @freelancespec, notice: 'Freelance spec was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @freelancespec = Freelancespec.find(params[:id])
    @freelancespec.destroy
    redirect_to freelancespecs_url, notice: 'Freelance spec was successfully destroyed.'
  end

  private

  def freelancespec_params
    params.require(:freelancespec).permit(:first_name, :last_name, :skill, :portfolio, :pricing)
  end
end
