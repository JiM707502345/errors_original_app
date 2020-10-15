class CommentsController < ApplicationController
  def create
    @error = Error.find(params[:error_id])
    @comment = @error.comments.new(comment_params)
    @comment.save
    redirect_to "/errors/#{@comment.error.id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, error_id: params[:error_id])
  end
end
