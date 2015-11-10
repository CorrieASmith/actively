class LunchIngredientsController < ApplicationController
  before_filter :authenticate_user! 

  def show
    @lunch = Lunch.find(params[:lunch_id])
    @lunch_ingredient = LunchIngredient.find(params[:id])
    redirect_to lunch_path(@lunch_ingredient.lunch)
  end

  def new
    @lunch = Lunch.find(params[:lunch_id])
    @lunch_ingredient = @lunch.lunch_ingredients.new
  end

  def create
    @lunch = Lunch.find(params[:lunch_id])
    @lunch_ingredient = @lunch.lunch_ingredients.new(lunch_ingredient_params)
    if @lunch_ingredient.save
      redirect_to lunch_path(@lunch_ingredient.lunch)
    else
      render :new
    end
  end

  def edit
    @lunch = Lunch.find(params[:lunch_id])
    @lunch_ingredient = LunchIngredient.find(params[:id])
    render :edit
  end

  def update
    @lunch = Lunch.find(params[:lunch_id])
    @lunch_ingredient = LunchIngredient.find(params[:id])
    if @lunch_ingredient.update(lunch_ingredient_params)
      redirect_to lunch_path(@lunch_ingredient.lunch)
    else
      render :edit
    end
  end

  def destroy
    @lunch_ingredient = LunchIngredient.find(params[:id])
    lunch_id = params[:lunch_id]
    @lunch_ingredient.destroy
    redirect_to "/"
  end

  private
  def lunch_ingredient_params
    params.require(:lunch_ingredient).permit(:description, :chosen)
  end
end
