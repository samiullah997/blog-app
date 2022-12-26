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
    if comment.save
      redirect_to user_post_url(post.author, post), notice: 'Comment was successfully created.'
    else
      redirect_to new_user_session_url
    end
  end

  # delete a comment
  def destroy
    comment = Comment.find(params[:id])
    user = User.find(params[:user_id])
    post = user.posts.find(params[:post_id])
    flash[notice:] = comment.destroy ? 'Comment was successfully deleted.' : 'Error: Comment could not be deleted'

    redirect_to user_post_path(user, post)
  end

  private

  # only allow a list of trusted parameters through
  def comment_params
    params.require(:comment).permit(:text)
  end
end
