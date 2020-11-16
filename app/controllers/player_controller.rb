class PlayerController < ApplicationController
  def index
    @player = Player.all
  end

  def new
    @player = Player.new
    @team = Team.all.map { |team| [team.title, team.id] }
    @region = Region.all.map { |team| [team.title, team.id] }
    @country = Country.all.map { |team| [team.title, team.id] }
    @position = Position.all.map { |team| [team.title, team.id] }
  end

  def create
    player = Player.new(params.permit(:firsname,
                                      :lastname,
                                      :birthday,
                                      :position_id,
                                      :country_id,
                                      :region_id,
                                      :team_id,
                                      :start_play,
                                      :end_play,
                                      :active
    ))
    redirect_to new_player_path if player.save
  end

  def show
    @player = Player.find(params[:id].to_i)
  end
end
