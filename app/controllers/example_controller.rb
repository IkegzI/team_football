class ExampleController < ApplicationController
  helper ExampleHelper
  # include ExampleHelper
  def last_tem_games
    @game = Game.order(:date).last(10)
  end

  def complete_indicator
  end

  def complete_query
    ids_games = Game.last_ids(5)
    @game = Game.where(id: ids_games)
    type_ids = params.require(:player_actions).map(&:to_i)
    type_ids.shift
    @journal = JournalPlayer.where(game_id: ids_games,
                                   type_action_id: type_ids,
                                   player_id: params[:player_id].to_i)
    render '/example/complete_indicator'
  end



end
