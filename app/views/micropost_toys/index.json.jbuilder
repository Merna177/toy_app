json.array!(@micropost_toys) do |micropost_toy|
  json.extract! micropost_toy, :id, :content, :user_id
  json.url micropost_toy_url(micropost_toy, format: :json)
end
