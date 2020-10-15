class ErrorsController < ApplicationController
  before_action :set_error, only: [:destroy, :edit, :update, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @errors = Error.includes(:user).order('created_at DESC')
  end

  def new
    @error = Error.new
  end

  def create
    @error = Error.new(error_params)
    if @error.valid?
      @error.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @error.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @error.update(error_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @comment = @error.comments.new
    @comments = @error.comments.includes(:user).order('created_at DESC')
  end

  def search
    @errors = Error.search(params[:keyword]).order('created_at DESC')
  end

  def about
    render :about
  end

  def category_show
  end

  def industry
    @errors = Error.where(industry_id: params[:industry_id])
  end

  def own_error
    @errors = Error.where(own_error_id: params[:own_error_id])
  end

  def human_factor
    @errors = Error.where(human_factor_id: params[:human_factor_id])
  end

  def in_my_head
    @errors = Error.where(human_factor_id: params[:in_my_head_id])
  end

  private

  def set_error
    @error = Error.find(params[:id])
  end

  def error_params
    params.require(:error).permit(
      :industry_id,
      :own_error_id,
      :human_factor_id,
      :in_my_head_id,
      :frequency_id,
      :try,
      :error,
      :learning,
      :next_action
    ).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end
