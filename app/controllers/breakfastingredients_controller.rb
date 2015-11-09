class BreakfastIngredientsController < ApplicationController
  def show
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfast_ingredient = BreakfastIngredient.find(params[:id])
    redirect_to breakfast_path(@breakfast_ingredient.breakfast)
  end

  def new
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfast_ingredient = @breakfast.breakfast_ingredients.new
  end

  def create
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfast_ingredient = @breakfast.breakfast_ingredients.new(breakfast_ingredient_params)
    if @breakfast_ingredient.save
      redirect_to breakfast_path(@breakfast_ingredient.breakfast)
    else
      render :new
    end
  end

  def edit
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfast_ingredient = BreakfastIngredient.find(params[:id])
    render :edit
  end

  def update
    @breakfast = Breakfast.find(params[:breakfast_id])
    @breakfast_ingredient = BreakfastIngredient.find(params[:id])
    if @breakfast_ingredient.update(breakfast_ingredient_params)
      redirect_to breakfast_path(@breakfast_ingredient.breakfast)
    else
      render :edit
    end
  end

  def destroy
    @breakfast_ingredient = BreakfastIngredient.find(params[:id])
    breakfast_id = params[:breakfast_id]
    @breakfast_ingredient.destroy
    redirect_to "/"
  end

  private
  def breakfast_ingredient_params
    params.require(:breakfast_ingredient).permit(:description, :chosen)
  end
end
