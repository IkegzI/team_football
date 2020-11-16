class TypeActionController < ApplicationController
  def new
    @action = TypeAction.new
  end

  def index
    @action = TypeAction.all
  end

  def create
    @action = TypeAction.new(params.permit(:title))
    redirect_to type_action_index_path if @action.save
  end
end