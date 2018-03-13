class StoreController < ApplicationController
  def index
  @bikes = Bike.order(:model)
end
end
