class BreakfastsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @breakfasts = Breakfast.all
  end

  def show
    @breakfast = Breakfast.find(params[:id])
  end

  def new
    @breakfast = Breakfast.new
    render :new
  end

  def create
    @breakfast = Breakfast.new(breakfast_params)
    current_user.breakfasts.push(@breakfast)
    if @breakfast.save
      flash[:notice] = "Your breakfast was submitted successfully!"
      redirect_to breakfasts_path
    else
      render :new
    end
  end

  def edit
    @breakfast = Breakfast.find(params[:id])
    render :edit
  end

  def update
    @breakfast = Breakfast.find(params[:id])
    if @breakfast.update(breakfast_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @breakfast = Breakfast.find(params[:id])
    @breakfast.destroy
    redirect_to "/"
  end

  private def breakfast_params
    params.require(:breakfast).permit(:add_food)
  end
end
