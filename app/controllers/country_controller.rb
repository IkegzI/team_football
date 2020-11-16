class CountryController < ApplicationController
  def new
    @country = Country.new
  end

  def index
    @country = Country.all
  end

  def create
    @country = Country.new(params.permit(:title))
    redirect_to country_index_path if @country.save
  end

end
