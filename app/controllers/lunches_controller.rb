class LunchesController < ApplicationController
  def index
    @lunches = Lunch.all
  end

  def show
    @lunch = Lunch.find(params[:id])
  end

  def new
    @lunch = Lunch.new
    render :new
  end

  def create
    @lunch = Lunch.new(lunch_params)
    current_user.lunches.push(@lunch)
    if @lunch.save
      flash[:notice] = "Your lunch was submitted successfully!"
      redirect_to lunches_path
    else
      render :new
    end
  end

  def edit
    @lunch = Lunch.find(params[:id])
    render :edit
  end

  def update
    @lunch = Lunch.find(params[:id])
    if @lunch.update(lunch_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @lunch = Lunch.find(params[:id])
    @lunch.destroy
    redirect_to "/"
  end

  private def lunch_params
    params.require(:lunch).permit(:add_food)
  end
end
