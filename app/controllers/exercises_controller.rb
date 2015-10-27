class ExercisesController < ApplicationController
  def show
    @target = Target.find(params[:question_id])
    @exercise = Exercise.find(params[:id])
    redirect_to target_path(@exercise.target)
  end
end
