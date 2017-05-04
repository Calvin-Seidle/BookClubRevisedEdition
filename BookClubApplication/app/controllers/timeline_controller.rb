class TimelineController < ApplicationController
  def index
  	@books = Book.where(:user_id => current_user.id).order("created_at DESC")
  	# @review = Review.find(params[:book_id])	
  end
end
