json.extract! product, :id, :nombre, :image_url, :descripcion, :created_at, :updated_at
json.url product_url(product, format: :json)
