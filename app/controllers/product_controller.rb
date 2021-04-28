class ProductController < ApplicationController
  def new
  end

  def show
    @products = Product.all
  end

  def edit
  end

  def delete
  end
end
