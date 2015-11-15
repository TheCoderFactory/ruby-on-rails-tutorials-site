class Comment < ActiveRecord::Base
  belongs_to :tutorial
  belongs_to :user

  def self.reverse_chron_order
  	order(created_at: :desc)
  end
end
