json.array!(@lombard_tabs) do |lombard_tab|
  json.extract! lombard_tab, :id, :title, :content, :icon, :lombard_id
  json.url lombard_tab_url(lombard_tab, format: :json)
end
