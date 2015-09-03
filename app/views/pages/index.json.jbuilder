json.array!(@pages) do |page|
  json.extract! page, :id, :title, :description, :content, :publish, :cover, :icon, :bg
  json.url page_url(page, format: :json)
end
