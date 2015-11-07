class SnackIngredientsController < ApplicationController
  def show
    @snack = Snack.find(params[:snack_id])
    @snackingredient = SnackIngredient.find(params[:id])
    redirect_to snack_path(@snackingredient.snack)
  end

  def new
    @snack = Snack.find(params[:snack_id])
    @snackingredient = @snack.snacks.new
  end

  def create
    @snack = Snack.find(params[:snack_id])
    @snackingredient = @snack.snacks.new(snack_params)
    if @snackingredient.save
      redirect_to snack_path(@snackingredient.snack)
    else
      render :new
    end
  end

  def edit
    @snack = Snack.find(params[:snack_id])
    @snackingredient = SnackIngredient.find(params[:id])
    render :edit
  end

  def update
    @snack = Snack.find(params[:snack_id])
    @snackingredient = SnackIngredient.find(params[:id])
    if @snackingredient.update(snack_params)
      redirect_to snack_path(@snackingredient.snack)
    else
      render :edit
    end
  end

  def destroy
    @snackingredient = SnackIngredient.find(params[:id])
    snack_id = params[:snack_id]
    @snackingredient.destroy
    redirect_to snack_path(snack_id)
  end

  private
  def snack_params
    params.require(:snackingredient).permit(:description, :chosen)
  end
end
