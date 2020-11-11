class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @errors = Error.where(user_id: params[:id]).order('created_at DESC')
    # @errors = @user.all.order("created_at DESC")
    # @error = Error.find(params[:id])
    # @relationship = current_user.relationships.find_by(follow_id: @user.id)
    # @set_relationship = current_user.relationships.new
  end

  def edit
    @error = Error.find(params[:id]) #IDを検索する処理を記載
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
