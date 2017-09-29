class UserController < ApplicationController
  def new
    # @user = User.new
  end

  def user_params
    params.require(:user).permit(:username, :password, :front_name, :last_name)
  end
end