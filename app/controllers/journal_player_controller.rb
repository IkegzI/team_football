class JournalPlayerController < ApplicationController
  def new
    @journal_player = JournalPlayer.new
    @team = Team.all.map { |item| [item.title, item.id] }
    @action = TypeAction.all.map { |item| [item.title, item.id] }
    @game = Game.all.map { |item| ["#{item.date} #{item.owners.first.title}-#{item.visitors.first.title}", item.id] }
    @player =  Player.all.map{|player| ["#{player.lastname} #{player.firstname}", player.id]}
  end

  def create
    type_action = params[:player_actions].map { |id| TypeAction.find(id.to_i) if id.to_i > 0 }.compact
    type_action.each do |item|
      journal_player = JournalPlayer.new(params.permit(:player_id,
                                                       :team_id,
                                                       :game_id))
      journal_player.type_action_id = item.id
      journal_player.save
    end
    redirect_to new_journal_player_path
  end

  def index
    @journal = JournalPlayer.all
  end

end
