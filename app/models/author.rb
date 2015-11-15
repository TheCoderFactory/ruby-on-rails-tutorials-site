class Author < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :title, :bio, presence: true

  mount_uploader :image, AuthorImageUploader

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  def full_name
  	[first_name, last_name].join(' ')
  end
end
