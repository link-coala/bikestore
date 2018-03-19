json.extract! product, :id, :model, :image_url, :description, :rin, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
