class SnacksController < ApplicationController
  def index
    @snacks = Snack.all
  end

  def show
    @snack = Snack.find(params[:id])
  end

  def new
    @snack = Snack.new
    render :new
  end

  def create
    @snack = Snack.new(snack_params)
    if @snack.save
      flash[:notice] = "Your snack was submitted successfully!"
      redirect_to snacks_path
    else
      render :new
    end
  end

  def edit
    @snack = Snack.find(params[:id])
    render :edit
  end

  def update
    @snack = Snack.find(params[:id])
    if @snack.update(snack_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @snack = Snack.find(params[:id])
    @snack.destroy
    redirect_to "/"
  end

  private def snack_params
    params.require(:snack).permit(:add_food)
  end
end
