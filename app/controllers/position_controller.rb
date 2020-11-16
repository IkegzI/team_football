class PositionController < ApplicationController
  def new
    @position = Position.new
  end

  def index
    @position = Position.all
  end

  def create
    @position = Position.new(params.permit(:title))
    redirect_to position_index_path if @position.save
  end

end
