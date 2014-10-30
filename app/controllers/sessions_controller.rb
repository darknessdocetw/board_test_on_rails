class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:userid] = user.id
      redirect_to groups_path
    else
      render :new
    end
  end

  def destroy
    session[:userid] = nil
    redirect_to login_path
  end
end
