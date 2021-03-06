class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    #@user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    # render
    @user = User.find(params[:id])
  end

  def update
    # actually create in DB
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to new_user_path
    else
      render :edit
    end
  end


  private
  def user_params
    params.require(:user).permit(:username,:email,:password)
  end
  
end
