class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :slug
      t.text :intro
      t.text :content
      t.string :image
      t.boolean :published

      t.timestamps null: false
    end
    add_index :tutorials, :slug, unique: true
  end
end
