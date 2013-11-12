json.array!(@photos) do |photo|
  json.extract! photo, :user_id, :name, :description, :tags, :picture
  json.url photo_url(photo, format: :json)
end
