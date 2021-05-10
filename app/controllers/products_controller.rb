class ProductsController < ApplicationController
  before_action :initialize_session, :load_cart
  before_action :current_product, only: [:show, :edit, :update, :destroy]
  
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
      redirect_to product_path(@product)
    else
      flash[:error] = "Please provide invalid input"
      redirect_to products_path
    end
  end

  def edit; end

  def update
    @product.update(product_params)
    if @product.valid?
      redirect_to product_path(@product)
    else
      flash[:error] = "Please provide invalid input"
      redirect_to products_path
    end
  end

  def destroy 
    @product.destroy
    redirect_to products_path
  end

  def add_to_cart 
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :picture)
  end

  def current_product
    @product = Product.find(params[:id])
  end
end
