json.array!(@photos) do |photo|
  json.extract! photo, :name, :description, :picture
  json.url photo_url(photo, format: :json)
end
