# create a default user
User.create(email: 'user@example.com', password: '12345678')

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