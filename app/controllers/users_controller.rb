class UsersController < ApplicationController
  before_filter :authenticate_user! 

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
