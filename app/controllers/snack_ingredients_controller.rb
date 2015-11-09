class SnackIngredientsController < ApplicationController
  def show
    @snack = Snack.find(params[:snack_id])
    @snack_ingredient = SnackIngredient.find(params[:id])
    redirect_to snack_path(@snack_ingredient.snack)
  end

  def new
    @snack = Snack.find(params[:snack_id])
    @snack_ingredient = @snack.snack_ingredients.new
  end

  def create
    @snack = Snack.find(params[:snack_id])
    @snack_ingredient = @snack.snack_ingredients.new(snack_ingredient_params)
    if @snack_ingredient.save
      redirect_to snack_path(@snack_ingredient.snack)
    else
      render :new
    end
  end

  def edit
    @snack = Snack.find(params[:snack_id])
    @snack_ingredient = SnackIngredient.find(params[:id])
    render :edit
  end

  def update
    @snack = Snack.find(params[:snack_id])
    @snack_ingredient = SnackIngredient.find(params[:id])
    if @snack_ingredient.update(snack_ingredient_params)
      redirect_to snack_path(@snack_ingredient.snack)
    else
      render :edit
    end
  end

  def destroy
    @snack_ingredient = SnackIngredient.find(params[:id])
    snack_id = params[:snack_id]
    @snack_ingredient.destroy
    redirect_to "/"
  end

  private
  def snack_ingredient_params
    params.require(:snack_ingredient).permit(:description, :chosen)
  end
end
