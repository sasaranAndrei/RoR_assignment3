class ProductsController < ApplicationController
  
  before_action :current_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy 
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :picture, :description, :price)
  end

  def current_product
    @product = Product.find(params[:id])
  end

end
