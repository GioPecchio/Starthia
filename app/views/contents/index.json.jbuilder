json.array!(@contents) do |content|
  json.extract! content, :id, :title, :description, :price
  json.url content_url(content, format: :json)
end
