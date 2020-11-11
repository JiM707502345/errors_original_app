class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @errors = Error.where(user_id: @user.id)
    @error = Error.find(params[:id])
    @relationship = current_user.relationships.find_by(follow_id: @user.id)  
    @set_relationship = current_user.relationships.new
  end

  def user_like
  end

  def followings
    @user = User.find(params[:id])
    @users = @user.followings.all
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers.all
  end
end
