class DinnerIngredientsController < ApplicationController
  def show
    @dinner = Dinner.find(params[:dinner_id])
    @dinneringredient = DinnerIngredient.find(params[:id])
    redirect_to dinner_path(@dinneringredient.dinner)
  end

  def new
    @dinner = Dinner.find(params[:dinner_id])
    @dinneringredient = @dinner.dinners.new
  end

  def create
    @dinner = Dinner.find(params[:dinner_id])
    @dinneringredient = @dinner.dinners.new(dinner_params)
    if @dinneringredient.save
      redirect_to dinner_path(@dinneringredient.dinner)
    else
      render :new
    end
  end

  def edit
    @dinner = Dinner.find(params[:dinner_id])
    @dinneringredient = DinnerIngredient.find(params[:id])
    render :edit
  end

  def update
    @dinner = Dinner.find(params[:dinner_id])
    @dinneringredient = DinnerIngredient.find(params[:id])
    if @dinneringredient.update(dinner_params)
      redirect_to dinner_path(@dinneringredient.dinner)
    else
      render :edit
    end
  end

  def destroy
    @dinneringredient = DinnerIngredient.find(params[:id])
    dinner_id = params[:dinner_id]
    @dinneringredient.destroy
    redirect_to dinner_path(dinner_id)
  end

  private
  def dinner_params
    params.require(:dinneringredient).permit(:description, :chosen)
  end
end
