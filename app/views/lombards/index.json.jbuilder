json.array!(@lombards) do |lombard|
  json.extract! lombard, :id, :name, :description, :content, :image
  json.url lombard_url(lombard, format: :json)
end
