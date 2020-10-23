class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @errors = Error.where(user_id: @user.id)
  end

  def user_like
    @user = User.find_by(id: params[:id])
    @errors = Error.includes(:user).order('created_at DESC')
  end
end
