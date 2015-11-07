class BreakfastIngredientsController < ApplicationController
  def show
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfastingredient = BreakfastIngredient.find(params[:id])
    redirect_to breakfast_path(@breakfastingredient.breakfast)
  end

  def new
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfastingredient = @breakfast.breakfastingredients.new
  end

  def create
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfastingredient = @breakfast.breakfastingredients.new(breakfastingredient_params)
    if @breakfastingredient.save
      redirect_to breakfast_path(@breakfastingredient.breakfast)
    else
      render :new
    end
  end

  def edit
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfastingredient = BreakfastIngredient.find(params[:id])
    render :edit
  end

  def update
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfastingredient = BreakfastIngredient.find(params[:id])
    if @breakfastingredient.update(breakfastingredient_params)
      redirect_to breakfast_path(@breakfastingredient.breakfast)
    else
      render :edit
    end
  end

  def destroy
    @breakfastingredient = BreakfastIngredient.find(params[:id])
    breakfast_id = params[:breakfast_id]
    @breakfastingredient.destroy
    redirect_to breakfast_path(breakfast_id)
  end

  private
  def breakfastingredient_params
    params.require(:breakfastingredient).permit(:description, :chosen)
  end
end
