class StoreController < ApplicationController
include CurrentCart
before_action :set_cart 
def index
  @bikes = Bike.order(:model)
end
end
