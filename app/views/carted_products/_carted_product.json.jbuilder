# json.extract! carted_product, :id, :created_at, :updated_at
# json.url carted_product_url(carted_product, format: :json)

json.id carted_product.id
json.user_id carted_product.user_id
json.product_id carted_product.product_id
json.product carted_product.product
json.quantity carted_product.quantity
json.status carted_product.status
json.order_id carted_product.order_id
