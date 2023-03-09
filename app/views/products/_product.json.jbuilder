# json.extract! product, :id, :created_at, :updated_at
# json.url product_url(product, format: :json)

json.id product.id
json.name product.name
json.price product.price
json.images product.images
json.is_discounted? product.is_discounted?
json.tax product.tax
json.total product.total
json.description product.description
json.created_at product.created_at
json.updated_at product.updated_at
json.quantity product.quantity
json.supplier product.supplier
