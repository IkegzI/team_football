class RegionController < ApplicationController
  def new
    @region = Region.new
  end

  def index
    @region = Region.all
  end

  def create
    @region = Region.new(params.permit(:title))
    redirect_to region_index_path if @region.save
  end

end
