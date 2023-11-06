class TitlesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @title = Title.new
    @titles = Title.all.order("created_at DESC")
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.create(title_params)
    redirect_to root_path
  end

  private
  def title_params
    params.require(:title).permit(:subject, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
