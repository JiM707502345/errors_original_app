class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(error_id: @error.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(error_id: @error.id)
    like.destroy
  end

  def set_variables
    @error = Error.find(params[:error_id])
    @id_name = "#like-link-#{@error.id}"
  end

end
