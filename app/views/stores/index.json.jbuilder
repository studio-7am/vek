json.array!(@stores) do |store|
  json.extract! store, :id, :name, :description, :content, :image
  json.url store_url(store, format: :json)
end
