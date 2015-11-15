class Tutorial < ActiveRecord::Base
  belongs_to :user

  mount_uploader :image, TutorialImageUploader
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :intro, :content, presence: true

  def self.published
  	where(published: true)
  end

  def self.latest
  	published.order(created_at: :desc)
  end
end
