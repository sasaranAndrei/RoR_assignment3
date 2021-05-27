class ProductsController < ApplicationController
  include SessionsHelper
  include UsersHelper
  
  before_action :load_cart
  before_action :current_product, only: %i[show edit update destroy]
  before_action :is_admin, only: :index
  
  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    
    if @product.valid?
      redirect_to(product_path(@product))
    else
      redirect_to(products_path)
    end
  end

  def edit; end

  def update
    @product.update(product_params)
    
    if @product.valid?
      redirect_to(product_path(@product))
    else
      redirect_to(products_path)
    end
  end

  def destroy 
    @product.destroy
    
    redirect_to(products_path)
  end

  def add_to_cart 
    if logged_in?
      id = params[:id].to_i
      current_user.cart << id unless current_user.cart.include?(id)
      current_user.update_attribute(:cart, current_user.cart)
      flash[:success] = "#{ Product.find(id).title } successfully added to the cart"
      
      redirect_to(root_path)  
    else
      flash[:danger] = 'Please log in before adding products to the cart'
      
      redirect_to(login_path)
    end
  end
  
  def remove_from_cart
    id = params[:id].to_i
    current_user.cart.delete(id)
    current_user.update_attribute(:cart, current_user.cart)

    redirect_to(cart_path)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :picture)
  end

  def current_product
    @product = Product.find(params[:id])
  end
end
