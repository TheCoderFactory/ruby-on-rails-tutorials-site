class AddSlugToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :slug, :string
    add_index :authors, :slug
  end
end
