class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  # index and show actions are the same as in app\controllers\posts_controller.rb
  def index
    @users = User.all.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end
end
