class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :twitter
      t.string :linkedin
      t.string :github
      t.string :image
      t.string :title
      t.text :bio

      t.timestamps null: false
    end
  end
end
