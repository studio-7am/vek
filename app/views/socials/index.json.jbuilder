json.array!(@socials) do |social|
  json.extract! social, :id, :name, :icon, :url
  json.url social_url(social, format: :json)
end
