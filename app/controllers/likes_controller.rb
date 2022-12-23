class LikesController < ApplicationController
  # This method is used to create a new like.
  def create
    post = Post.find(params[:post_id])
    like = Like.create(author: current_user, post:)

    like.save ? flash[:notice] = 'Post was liked' : flash.now[:notice] = 'Error: Like could not be saved'

    redirect_to user_post_url(current_user.id, post.id)
  end
end
