class CommentsController < ApplicationController
	def create
	  @homepage = Homepage.find(params[:homepage_id])
	  @comment = @homepage.comments.create!(params[:comment])
	  redirect_to @homepage, :notice => "Comment created!"
	end

end
