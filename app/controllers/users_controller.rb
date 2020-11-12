class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @errors = Error.where(user_id: @user.id).order('created_at DESC')
  end

  def edit
    @error = Error.find(params[:id])
  end

  def user_like
    @user = User.find(params[:id])
    @users = @user.liked_errors.all.order('created_at DESC')
  end

  def followings
    @user = User.find(params[:id])
    @users = @user.followings.all.order('created_at DESC')
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers.all.order('created_at DESC')
  end
end
