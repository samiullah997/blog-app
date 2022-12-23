class Api::V1::PostsController < Api::V1::ApplicationController
  before_action :set_author, only: %i[index show]
  before_action :set_post, only: [:show]
  
  def index
    posts = @author.posts
    render json: posts, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  private

  def set_author
    @author = User.find(params[:user_id])
  end

  def set_post
    @post = set_author.posts.find(params[:id])
  end
end
