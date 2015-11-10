class DinnersController < ApplicationController
  before_filter :authenticate_user! 

  def index
    @dinners = Dinner.all
  end

  def show
    @dinner = Dinner.find(params[:id])
  end

  def new
    @dinner = Dinner.new
    render :new
  end

  def create
    @dinner = Dinner.new(dinner_params)
    current_user.dinners.push(@dinner)
    if @dinner.save
      flash[:notice] = "Your dinner was submitted successfully!"
      redirect_to dinners_path
    else
      render :new
    end
  end

  def edit
    @dinner = Dinner.find(params[:id])
    render :edit
  end

  def update
    @dinner = Dinner.find(params[:id])
    if @dinner.update(dinner_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @dinner = Dinner.find(params[:id])
    @dinner.destroy
    redirect_to "/"
  end

  private def dinner_params
    params.require(:dinner).permit(:add_food)
  end
end
