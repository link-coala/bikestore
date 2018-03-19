class ZtoreController < ApplicationController
  def index
 @products = Product.order(:model) 
 end
end
