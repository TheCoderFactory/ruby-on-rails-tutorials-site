class AddWebsiteToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :website, :string
  end
end
