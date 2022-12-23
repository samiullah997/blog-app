class PostsController < ApplicationController

  # This method is used to show all posts.
  def index
    @user = User.find(params[:user_id])
  end

  # This method is used to show a specific post.
  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comments = @post.comments.includes([:author])
    @like = Like.new
  end

  # This method is used to create a new comment.
  def create_comment
    @comment = Comment.new(comment_params)
    @comment.post = Post.find(params[:id])
    @comment.author = current_user 
    if @comment.save
      redirect_to post_path
    end
  end

  # This method is used to create a new like.
  def create_like
    @like = Like.new(author: current_user, post: Post.find(params[:id])) 
    if @like.save
      redirect_to post_path
    end
  end

  # This method is used to delete a post.
  def destroy
    post = Post.find(params[:id])
    post.destroy ? flash[:notice] = 'Post was successfully deleted.' : flash[:notice] = 'Error: Post could not be deleted'

    redirect_to user_posts_url
  end

  # This method is used to create a new post.
  def create
    @post = Post.new(post_params)
    @post.author = current_user
    @post.likes_counter = 0
    @post.comments_counter = 0
    @post.save ? flash[:notice] = 'Post have been saved successfully' : flash[:notice] = 'Login'
    
    redirect_to posts_new_path
  end

  # This method is used to show the new post form.
  def new
    @post = Post.new
  end

  private

  # only allow a list of trusted parameters through
  def post_params
    params.require(:post).permit(:title, :text)
  end

  # only allow a list of trusted parameters through
  def comment_params
    params.require(:comment).permit(:text)
  end
end
