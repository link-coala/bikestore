json.extract! bike, :id, :model, :image_url, :description, :rin, :price, :created_at, :updated_at
json.url bike_url(bike, format: :json)
