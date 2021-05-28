class OrdersController < ApplicationController
  include UsersHelper

  before_action :load_cart
  before_action :current_order, only: %i[show edit update destroy]

  def index
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.products = current_user.cart
    if @order.save
      current_user.update_attribute(:cart, [])
      redirect_to(@order)
    else
      redirect_to(new_order_path)
    end
  end

  private

  def order_params
    params.require(:order).permit(:delivery_date, :address, :mentions)
  end

  def current_order
    @order = Order.find(params[:id])
  end
end
