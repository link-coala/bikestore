class Cart < ApplicationRecord
has_many :line_items, dependent: :destroy
def add_bike(bike)
current_item = line_items.find_by(bike_id: bike.id)
if current_item
current_item.quantity += 1
else
current_item = line_items.build(bike_id: bike.id)
end
current_item
end
end
