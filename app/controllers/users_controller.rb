class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # @user = User.find(params[:id])
    @user = User.includes(:posts).find(params[:id])
  end
end
