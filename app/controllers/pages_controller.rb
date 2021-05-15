class PagesController < ApplicationController
  def index
    @products = Product.all
    Cloudinary::Uploader.upload('cart.jpg')
  end
end
