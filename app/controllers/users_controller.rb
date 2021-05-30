class UsersController < ApplicationController
  before_action :current_user, only: %i[show edit update destroy]
  before_action :is_admin, only: :index
  
  def show
    @orders = @user.orders
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      @user.send_activation_email
      flash[:info] = 'Check your email to activate your account'
      
      redirect_to(root_url)
    else
      render('new')
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
