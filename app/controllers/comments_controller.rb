class CommentsController < ApplicationController

  # get posts and comments for show action
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create a new comment
  def create
    post = Post.find(params[:id])
    comment = Comment.create(author: current_user, post:, **comment_params)
    unless comment.save
      redirect_to new_user_session_url
    else
      redirect_to user_post_url(post.author, post), notice: 'Comment was successfully created.'
    end
  end

  # delete a comment
  def destroy
    comment = Comment.find(params[:id])
    user = User.find(params[:user_id])
    post = user.posts.find(params[:post_id])
    comment.destroy ? flash[notice:] = 'Comment was successfully deleted.' : flash[notice:] = 'Error: Comment could not be deleted'

    redirect_to user_post_path(user, post)
  end

  private

  # only allow a list of trusted parameters through
  def comment_params
    params.require(:comment).permit(:text)
  end
end
