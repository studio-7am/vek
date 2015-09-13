json.array!(@store_orders) do |store_order|
  json.extract! store_order, :id, :number, :slug, :name, :phone, :email, :product_id
  json.url store_order_url(store_order, format: :json)
end
