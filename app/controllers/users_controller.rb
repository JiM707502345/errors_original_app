class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @errors = Error.where(user_id: @user.id).order('created_at DESC')
    @currentUserEntry = Entry.where(user_id: current_user.id)
    @userEntry = Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
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
