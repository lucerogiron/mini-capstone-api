# json.extract! order, :id, :created_at, :updated_at
# json.url order_url(order, format: :json)

json.user_id order.user_id
json.product_id order.product_id
json.quantity order.quantity
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
