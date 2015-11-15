json.array!(@comments) do |comment|
  json.extract! comment, :id, :tutorial_id, :user_id, :content
  json.url comment_url(comment, format: :json)
end
