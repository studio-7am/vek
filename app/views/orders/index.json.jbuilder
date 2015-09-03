json.array!(@orders) do |order|
  json.extract! order, :id, :number, :slug, :name, :phone, :email, :other, :page_id
  json.url order_url(order, format: :json)
end
