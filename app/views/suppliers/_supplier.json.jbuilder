# json.extract! supplier, :id, :created_at, :updated_at
# json.url supplier_url(supplier, format: :json)

json.name supplier.name
json.email supplier.email
json.phone_number supplier.phone_number
