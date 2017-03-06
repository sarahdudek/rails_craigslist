class UsersController < ApplicationController

  def show
    p "***" * 80
    p params
    p "***" * 80
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end

end
