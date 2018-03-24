class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :bike, optional: true
  belongs_to :cart
def total_price
bike.price * quantity
end
end
