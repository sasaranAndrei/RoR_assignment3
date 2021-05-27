class OrdersController < ApplicationController
  include UsersHelper

  before_action :load_cart

  def index
  end

  def show
  end

  def new
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :delivery_date, :address, :products, :created_at)
  end
end
