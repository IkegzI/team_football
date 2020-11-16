class GameController < ApplicationController
  def new
    @teams = Team.all.map { |team| [team.title, team.id] }
    @region = Region.all.map { |team| [team.title, team.id] }
    @country = Country.all.map { |team| [team.title, team.id] }
    @game = Game.new
  end

  def create
    game = Game.new(params.permit(:owners_id,
                                  :visitors_id,
                                  :date,
                                  :amount_owner,
                                  :amount_visitors,
                                  :result,
                                  :country_id,
                                  :region_id
    ))
    if game.save
      redirect_to game_index_path
    end
  end

  def show
    @game = Game.find(params[:id].to_i)
  end

  def index
    @game = Game.all
  end
end
