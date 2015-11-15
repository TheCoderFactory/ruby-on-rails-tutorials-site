class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :popular_tags, :latest_tutorials

  def popular_tags
  	# @popular_tags = ActsAsTaggableOn::Tag.most_used(10)
  	@popular_tag_counts = Tutorial.tag_counts_on(:tags)
  end

  def latest_tutorials
  	@latest_tutorials = Tutorial.latest
  end
end
