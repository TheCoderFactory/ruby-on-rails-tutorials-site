json.array!(@authors) do |author|
  json.extract! author, :id, :user_id, :first_name, :last_name, :twitter, :linkedin, :github, :image, :title, :bio
  json.url author_url(author, format: :json)
end
