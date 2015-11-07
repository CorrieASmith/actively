class LunchIngredientsController < ApplicationController
  def show
    @lunch = Lunch.find(params[:lunch_id])
    @lunchingredient = LunchIngredient.find(params[:id])
    redirect_to lunch_path(@lunchingredient.lunch)
  end

  def new
    @lunch = Lunch.find(params[:lunch_id])
    @lunchingredient = @lunch.lunchs.new
  end

  def create
    @lunch = Lunch.find(params[:lunch_id])
    @lunchingredient = @lunch.lunchs.new(lunch_params)
    if @lunchingredient.save
      redirect_to lunch_path(@lunchingredient.lunch)
    else
      render :new
    end
  end

  def edit
    @lunch = Lunch.find(params[:lunch_id])
    @lunchingredient = LunchIngredient.find(params[:id])
    render :edit
  end

  def update
    @lunch = Lunch.find(params[:lunch_id])
    @lunchingredient = LunchIngredient.find(params[:id])
    if @lunchingredient.update(lunch_params)
      redirect_to lunch_path(@lunchingredient.lunch)
    else
      render :edit
    end
  end

  def destroy
    @lunchingredient = LunchIngredient.find(params[:id])
    lunch_id = params[:lunch_id]
    @lunchingredient.destroy
    redirect_to lunch_path(lunch_id)
  end

  private
  def lunch_params
    params.require(:lunchingredient).permit(:description, :chosen)
  end
end
