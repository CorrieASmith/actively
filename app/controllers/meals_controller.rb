class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
    render :new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      flash[:notice] = "Your meal was submitted successfully!"
      redirect_to meals_path
    else
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
    render :edit
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to "/"
  end

  private def meal_params
    params.require(:meal).permit(:breakfast, :lunch, :dinner, :snacks)
  end
end
