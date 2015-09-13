json.array!(@lombard_orders) do |lombard_order|
  json.extract! lombard_order, :id, :number, :slug, :name, :phone, :email
  json.url lombard_order_url(lombard_order, format: :json)
end
