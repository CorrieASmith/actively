class DinnerIngredientsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = DinnerIngredient.find(params[:id])
    redirect_to dinner_path(@dinner_ingredient.dinner)
  end

  def new
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = @dinner.dinner_ingredients.new
  end

  def create
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = @dinner.dinner_ingredients.new(dinner_ingredient_params)
    if @dinner_ingredient.save
      redirect_to dinner_path(@dinner_ingredient.dinner)
    else
      render :new
    end
  end

  def edit
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = DinnerIngredient.find(params[:id])
    render :edit
  end

  def update
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = DinnerIngredient.find(params[:id])
    if @dinner_ingredient.update(dinner_ingredient_params)
      redirect_to dinner_path(@dinner_ingredient.dinner)
    else
      render :edit
    end
  end

  def destroy
    @dinner_ingredient = DinnerIngredient.find(params[:id])
    dinner_id = params[:dinner_id]
    @dinner_ingredient.destroy
    redirect_to "/"
  end

  private
  def dinner_ingredient_params
    params.require(:dinner_ingredient).permit(:description, :chosen)
  end
end
