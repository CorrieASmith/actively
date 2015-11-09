class DinnerIngredientsController < ApplicationController
  def show
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = DinnerIngredient.find(params[:id])
    redirect_to dinner_path(@dinner_ingredient.dinner)
  end

  def new
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = @dinner.dinners.new
  end

  def create
    @dinner = Dinner.find(params[:dinner_id])
    @dinner_ingredient = @dinner.dinners.new(dinner_params)
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
    if @dinner_ingredient.update(dinner_params)
      redirect_to dinner_path(@dinner_ingredient.dinner)
    else
      render :edit
    end
  end

  def destroy
    @dinner_ingredient = DinnerIngredient.find(params[:id])
    dinner_id = params[:dinner_id]
    @dinner_ingredient.destroy
    redirect_to dinner_path(dinner_id)
  end

  private
  def dinner_params
    params.require(:dinner_ingredient).permit(:description, :chosen)
  end
end
