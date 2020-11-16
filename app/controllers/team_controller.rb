class TeamController < ApplicationController
  def new
    @team = Team.new
    @region = Region.all.map{|team| [team.title, team.id]}
    @country = Country.all.map{|team| [team.title, team.id]}
  end

  def create
    team = Team.new(params.permit(:title,
                                  :country_id,
                                  :region_id
    ))
    redirect_to team_index_path if team.save
  end

  def index
    @team = Team.all
  end
end
