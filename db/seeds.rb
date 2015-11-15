# create a default user
if User.all.count < 1
	User.create(email: 'user@example.com', password: '12345678')
end

#create author 
if Author.all.count < 1
	Author.create(user_id: 1, first_name: 'Pete', last_name: 'Argent', github: 'pedrogrande', twitter: '@pedrogrande', title: 'Director of Coder Factory', bio: 'Loves coding with Ruby on Rails')
end
# create a single tutorial
require 'csv'

CSV.foreach('db/tutorials.csv', headers: true) do |row|
  tutorial_hash = row.to_hash
  tutorial = Tutorial.where(title: tutorial_hash["title"])
  if tutorial.count == 1
    tutorial.first.update_attributes(tutorial_hash)
  else
    Tutorial.create!(tutorial_hash)
  end # end if !product.nil?
end # end CSV.foreach