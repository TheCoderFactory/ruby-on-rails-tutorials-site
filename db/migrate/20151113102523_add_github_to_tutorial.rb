class AddGithubToTutorial < ActiveRecord::Migration
  def change
    add_column :tutorials, :github_link, :string
  end
end
