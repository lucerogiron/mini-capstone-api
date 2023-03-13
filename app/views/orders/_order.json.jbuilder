# json.extract! order, :id, :created_at, :updated_at
# json.url order_url(order, format: :json)

json.id order.id
json.user_id order.user_id
json.user order.user["name"]
json.product_id order.product_id
json.product order.product
json.quantity order.quantity
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
