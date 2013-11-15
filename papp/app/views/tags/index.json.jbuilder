json.array!(@tags) do |tag|
  json.extract! tag, :user_id, :photo_id, :tag_key, :tag_value
  json.url tag_url(tag, format: :json)
end
