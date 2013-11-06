json.array!(@images) do |image|
  json.extract! image, :name, :url
  json.url image_url(image, format: :json)
end
