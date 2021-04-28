class ProductController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    product = Product.create(product_params)
    redirect_to products_path
  end

  def show
    @products = Product.all
  end

  def edit
  end

  def delete
  end

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end
end
