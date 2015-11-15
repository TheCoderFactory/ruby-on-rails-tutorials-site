json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :user_id, :title, :slug, :intro, :content, :image, :published
  json.url tutorial_url(tutorial, format: :json)
end
