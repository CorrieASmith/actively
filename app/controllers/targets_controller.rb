class TargetsController < ApplicationController
  def index
    @targets = Target.all
  end

  def show
    @target = Target.find(params[:id])
  end

  def new
    @target = Target.new
    render :new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      flash[:notice] = "Your target muscle was submitted successfully!"
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    @target = Target.find(params[:id])
    render :edit
  end

  def update
    @target = Target.find(params[:id])
    if @target.update(target_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @target = Target.find(params[:id])
    @target.destroy
    redirect_to "/"
  end

  private def target_params
    params.require(:target).permit(:muscle)
  end
end
