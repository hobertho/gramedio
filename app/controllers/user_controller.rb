class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    begin
      @user = User.new(user_params)
      if @user.save
        flash[:success] = 'user berhasil dibuat! silahkan login'
        redirect_to home_path
      else
        flash[:danger] = @user.errors.full_messages.first
        redirect_back fallback_location: new_user_path
      end
    rescue => e
      flash[:danger] = e.message
      puts e.message
      puts e.backtrace
      redirect_back fallback_location: new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :front_name, :last_name, :address, :city, :post_code, :country, :state, :phone, :home, :email, :newsletter)
  end
end