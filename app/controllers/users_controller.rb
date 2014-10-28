class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    # instance variable
    @user = User.new
  end

  def create
    # render :new
    @user = User.new(user_param)
    @user.save
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
    def user_param
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
