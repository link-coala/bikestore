class LineItem < ApplicationRecord
  belongs_to :bike
  belongs_to :cart
def total_price
bike.price * quantity
end
end
