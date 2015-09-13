json.array!(@store_tabs) do |store_tab|
  json.extract! store_tab, :id, :title, :content, :icon, :store_id
  json.url store_tab_url(store_tab, format: :json)
end
