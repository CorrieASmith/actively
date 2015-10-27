class ExercisesController < ApplicationController
  def show
    @target = Target.find(params[:target_id])
    @exercise = Exercise.find(params[:id])
    redirect_to target_path(@exercise.target)
  end

  def new
    @target = Target.find(params[:target_id])
    @exercise = @target.exercises.new
  end

  def create
    @target = Target.find(params[:target_id])
    @exercise = @target.exercises.new(exercise_params)
    if @exercise.save
      redirect_to target_path(@exercise.target)
    else
      render :new
    end
  end

  def edit
    @target = Target.find(params[:target_id])
    @exercise = Exercise.find(params[:id])
    render :edit
  end

  def update
    @target = Target.find(params[:target_id])
    @exercise = Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      redirect_to target_path(@exercise.target)
    else
      render :edit
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    target_id = params[:target_id]
    @exercise.destroy
    redirect_to target_path(target_id)
  end

  private
  def exercise_params
    params.require(:exercise).permit(:description, :chosen)
  end
end
