class UsersController < ApplicationController
  
  before_action :current_user, only: %i[show edit update destroy]
  
  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      reset_session
      log_in @user 
      flash[:success] = 'Welcome to our restaurant!'
      redirect_to @user
    else
      render 'new'
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def current_user
    @user = User.find(params[:id])
  end
end
