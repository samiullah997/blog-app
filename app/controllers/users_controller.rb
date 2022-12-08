class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  def index
    @users = User.all.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end
end
