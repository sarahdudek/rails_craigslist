class UsersController < ApplicationController

  def show

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end

end
