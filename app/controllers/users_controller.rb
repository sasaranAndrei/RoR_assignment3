class UsersController < ApplicationController
  
  before_action :current_user, only: [:show, :edit, :update, :destroy]
  
  def show; end

  def new
    @user = User.new
  end

  private 

  def current_user
    @user = User.find(params[:id])
  end
end
