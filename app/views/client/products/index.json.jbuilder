json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :image, :lombard_order_id
  json.url product_url(product, format: :json)
end
