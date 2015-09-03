json.array!(@tabs) do |tab|
  json.extract! tab, :id, :title, :content, :page_id
  json.url tab_url(tab, format: :json)
end
